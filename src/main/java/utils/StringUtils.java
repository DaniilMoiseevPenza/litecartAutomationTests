package utils;

public class StringUtils {

    public static String getStringAfterChar(String text, char symbol) {
        return text.substring((text.lastIndexOf(symbol) + 1));
    }

    public static String getStringBeforeChar(String text, char symbol) {
        return text.substring(0,(text.indexOf(symbol)));
    }
}
