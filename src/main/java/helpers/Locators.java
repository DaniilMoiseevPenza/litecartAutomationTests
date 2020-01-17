package helpers;

import org.openqa.selenium.By;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Properties;

import static helpers.LoggerCommands.loggerWarn;


public class Locators {
    private Locators() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating Locators class.");
    }
    private static final String CLASS_NAME = Locators.class.getName();
    private static final Properties locatorsProperties;
    private static HashMap<String, String> lookup = new HashMap<String, String>();

    /**
     * Legend for the using at a resource file with locators:
     *  (<enum> - <text value>) ID - id, NAME - name, CSS - css, XPATH - xpath, TAG - tag, TEXT - text, PARTTEXT - partText
     */
    private enum LocatorType{
        ID, NAME, CSS, XPATH, TAG, TEXT, PARTTEXT
    }

    static {
        locatorsProperties = new Properties();
        InputStream is = Locators.class.getResourceAsStream("/locators.properties");
        try {
            locatorsProperties.load(new InputStreamReader(is, Charset.forName("UTF-8")));
        }
        catch (Exception e) {
            loggerWarn(CLASS_NAME,"Something wrong with the file 'locators.properties'.",e);
        }
    }

    public static By get(String locatorName) {
        String propertyValue = locatorsProperties.getProperty(locatorName);
        By locator = getLocator(propertyValue);
        String locatorValue = propertyValue.replaceAll("\\w{2,8}=","");
        lookup.put(locatorValue, locatorName);
        return locator;
    }

    public static By get(String locatorName, String parameter) {
        String propertyValue = locatorsProperties.getProperty(locatorName);
        By locator = getLocator(String.format(propertyValue, parameter));
        String locatorValue = propertyValue.replaceAll("\\w{2,8}=", "");
        lookup.put(locatorValue, locatorName);
        return locator;
    }

    public static String getName(String locator) {
        String pureLocator = locator.replaceAll("By.\\w+:", "").replaceAll("<select","")
                .replaceAll("name\\S+", "").trim();
        return lookup.get(pureLocator);
    }

    private static By getLocator(String locator){
        String[] locatorItems = locator.split("=",2);
        LocatorType locatorType = LocatorType.valueOf(locatorItems[0].toUpperCase());

        switch(locatorType) {

            case ID :
                return By.id(locatorItems[1]);


            case NAME:
                return By.name(locatorItems[1]);


            case CSS:
                return By.cssSelector(locatorItems[1]);


            case XPATH:
                return By.xpath(locatorItems[1]);


            case TAG:
                return By.tagName(locatorItems[1]);


            case TEXT:
                return By.linkText(locatorItems[1]);


            case PARTTEXT:
                return By.partialLinkText(locatorItems[1]);


            default:
                throw new IllegalArgumentException("No such locator type: " + locatorItems[0]);

        }
    }

}
