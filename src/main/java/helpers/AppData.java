package helpers;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Properties;

import static helpers.LoggerCommands.loggerWarn;


public class AppData {
    private AppData() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating AppData class.");
    }

    private static final String CLASS_NAME = AppData.class.getName();
    private static final Properties appDataProperties;

    public static final String PASSWORD;
    public static final String LOGIN_ODS;
    public static final String LOGIN_RDS;
    public static final String LOGIN_CDS;
    public static final String LOGIN_AS;
    public static final String LOGIN_KC;
    public static final String LOGIN_STP;
    public static final String PRED_PROD_URL;

    static {
        appDataProperties = new Properties();
        InputStream is = AppData.class.getResourceAsStream("/appdata.properties");
        try {
            appDataProperties.load(new InputStreamReader(is, Charset.forName("UTF-8")));
        } catch (Exception e) {
            loggerWarn(CLASS_NAME,"Something wrong with the file 'appDataProperties.properties'.", e);
        }

        LOGIN_ODS = appDataProperties.getProperty("loginODS");
        LOGIN_RDS = appDataProperties.getProperty("loginRDS");
        LOGIN_CDS = appDataProperties.getProperty("loginCDS");
        LOGIN_AS = appDataProperties.getProperty("loginAS");
        LOGIN_KC = appDataProperties.getProperty("loginKC");
        LOGIN_STP = appDataProperties.getProperty("loginSTP");
        PASSWORD = appDataProperties.getProperty("password");
        PRED_PROD_URL = appDataProperties.getProperty("predProdUrl");
    }

}