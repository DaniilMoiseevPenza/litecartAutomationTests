package helpers;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class LoggerCommands {

    public static void loggerWarn(String className, String text, Exception e) {
        Logger logger = LogManager.getLogger(className);
        logger.warn(text, e);
    }

    public static void writeToConsole(String text) {
        Logger logger = LogManager.getLogger();
        logger.info(text);
    }

}