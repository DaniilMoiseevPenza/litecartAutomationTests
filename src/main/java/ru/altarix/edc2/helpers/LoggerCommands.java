package ru.altarix.edc2.helpers;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LoggerCommands {
    private LoggerCommands() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating LoggerCommands class.");
    }

    public static void loggerWarn(String className,String text,Exception e)
    {
        Logger logger  = LogManager.getLogger(className);
        logger.warn(text, e);
    }
}
