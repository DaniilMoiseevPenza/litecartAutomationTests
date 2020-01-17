package helpers;

import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;

import java.io.*;
import java.util.List;


public class CSVReaderUtils {
    private CSVReaderUtils() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating CSVReaderUtils class.");
    }


    @SuppressWarnings("resource")
    public static List<String[]> parseCSV(String csvPath) throws IOException {
        CSVParser parser = new CSVParserBuilder().withSeparator(';').build();
        CSVReader csvReader = new CSVReaderBuilder(new InputStreamReader(new FileInputStream(csvPath), "windows-1251")).withCSVParser(parser).build();
        return csvReader.readAll();

    }

}
