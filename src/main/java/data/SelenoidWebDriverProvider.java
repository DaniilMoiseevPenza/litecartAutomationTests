package data;

import com.codeborne.selenide.WebDriverProvider;
import com.codeborne.selenide.WebDriverRunner;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebDriver;
import helpers.AppData;

import java.net.MalformedURLException;
import java.net.URL;



public class SelenoidWebDriverProvider implements WebDriverProvider {

    private static final String CLASS_NAME = SelenoidWebDriverProvider.class.getName();
    @Override
    public WebDriver createDriver(DesiredCapabilities capabilities) {
        DesiredCapabilities browser = new DesiredCapabilities();
        browser.setBrowserName("chrome");
        browser.setVersion("70.0");
        browser.setCapability("enableVNC", true);
        browser.setCapability("timeZone", "Europe/Moscow");

        try {
            RemoteWebDriver driver = new RemoteWebDriver(
                    new URL("http://172.29.134.49:4451/wd/hub/"),
//
                    browser);
            driver.manage().window().setSize(new Dimension(1920, 1080))
            ;
            driver.setFileDetector(new LocalFileDetector());
            WebDriverRunner.setWebDriver(driver);
            return driver;
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }
}

