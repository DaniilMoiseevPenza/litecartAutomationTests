package helpers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateHelper {
    private DateHelper() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating DateHelper class.");
    }


    public static SimpleDateFormat dateToFormatDdMmYyyyHhMm() {
        return new SimpleDateFormat("dd.MM.yyyy HH:mm");
    }

    public static Date parseDate(String dateToParse) throws ParseException {
        return dateToFormatDdMmYyyyHhMm().parse(dateToParse);
    }
}
