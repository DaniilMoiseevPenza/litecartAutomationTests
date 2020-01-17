package database;

import helpers.AppData;

import com.codeborne.selenide.Configuration;
import java.io.*;
import java.nio.charset.Charset;
import java.sql.*;
import java.util.Properties;
import org.apache.commons.dbutils.DbUtils;

import static helpers.LoggerCommands.loggerWarn;

public class DatabaseUtils {
    private DatabaseUtils() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating DatabaseUtils class.");
    }
    private static final Properties DatabaseProperties;
    private static Connection conn;

    private static final String PATH_TO_SQL_SCRIPTS = System.getProperty("user.dir") + "/src/main/java/ru/altarix/edc2/database/sqls/";
    private static final String CLASS_NAME = DatabaseUtils.class.getName();


    private static final String TEST_URL;
    private static final String TEST_PORT;
    private static final String TEST_PASSWORD;
    private static final String TEST_USER;
    private static final String TEST_DATABASE;
    private static final String PREDPROD_URL;
    private static final String PREDPROD_PORT;
    private static final String PREDPROD_USER;
    private static final String PREDPROD_PASSWORD;
    private static final String PREDPROD_DATABASE;

    private static void connectDataBaseWithUrl(String url) {
        switch (url) {
            case "http://test.edc2.altarix.org":
                connectDataBase(TEST_URL, TEST_PORT, TEST_DATABASE, TEST_USER, TEST_PASSWORD);
                break;
            case "http://213.79.88.85":
                connectDataBase(PREDPROD_URL, PREDPROD_PORT, PREDPROD_DATABASE, PREDPROD_USER, PREDPROD_PASSWORD);
                break;
            default:
                throw new IllegalArgumentException("No such url: " + url);
        }

    }

    static {
        DatabaseProperties = new Properties();
        InputStream is = AppData.class.getResourceAsStream("/database.properties");
        try {
            DatabaseProperties.load(new InputStreamReader(is, Charset.forName("UTF-8")));
        } catch (Exception e) {
            loggerWarn(CLASS_NAME, "Something wrong with the file 'DatabaseProperties.properties'.", e);
        }

        TEST_URL = DatabaseProperties.getProperty("testUrl");
        TEST_PORT = DatabaseProperties.getProperty("testPort");
        TEST_USER = DatabaseProperties.getProperty("testUser");
        TEST_PASSWORD = DatabaseProperties.getProperty("testpassword");
        TEST_DATABASE = DatabaseProperties.getProperty("testDatabase");
        PREDPROD_URL = DatabaseProperties.getProperty("PredProdUrl");
        PREDPROD_PORT = DatabaseProperties.getProperty("PredProdPort");
        PREDPROD_USER = DatabaseProperties.getProperty("PredProdUser");
        PREDPROD_PASSWORD = DatabaseProperties.getProperty("PredProdPassword");
        PREDPROD_DATABASE = DatabaseProperties.getProperty("PredProdDatabase");

    }

    private static void connectDataBase(String url, String port, String database, String user, String password) {
        try {
             conn = DriverManager.getConnection("jdbc:postgresql://" + url + ":" + port + "/" + database,user,password);
        } catch (SQLException e) {
            loggerWarn(CLASS_NAME, "Something wrong with connection to database", e);
        }
    }

    public static String executeSql(String sqlScriptFileName) throws SQLException {
        String s;
        BufferedReader br;
        String sqlQuery=null;
        Statement stmt = null;
        ResultSet rs=null;
        String result = null;
        StringBuilder sb = new StringBuilder();
        connectDataBaseWithUrl(Configuration.baseUrl);
        try {
            try (FileReader fr = new FileReader(new File(PATH_TO_SQL_SCRIPTS + sqlScriptFileName))) {
                br = new BufferedReader(fr);
                while ((s = br.readLine()) != null) {
                    sb.append(s);
                }
                br.close();
                sqlQuery = sb.toString();
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sqlQuery);
                if (rs.next())
                    result = rs.getString(1);
                else
                    throw new NullPointerException();
            }
        } catch (SQLException e) {
            loggerWarn(CLASS_NAME, "SQLException", e);
            loggerWarn(CLASS_NAME, "SQLState", e);
            loggerWarn(CLASS_NAME, "VendorError", e);
        } catch (FileNotFoundException e) {
            loggerWarn(CLASS_NAME, "Something wrong with sql scrypt file " + sqlScriptFileName + " in database.sqls", e);
        } catch (IOException e) {
            loggerWarn(CLASS_NAME, "IOException", e);
        }
        catch (NullPointerException e){
            loggerWarn(CLASS_NAME, "on host "+ Configuration.baseUrl+" sql request "+sqlQuery+" dont return anything", e);
        }finally{
            DbUtils.closeQuietly(rs);
            DbUtils.closeQuietly(stmt);
            DbUtils.closeQuietly(conn);
        }
        return result;

    }

}
