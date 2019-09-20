package ru.altarix.edc2;

import com.codeborne.selenide.Configuration;
import io.cucumber.junit.CucumberOptions;
import cucumber.api.junit.Cucumber;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/features/smoke/KC/consultations/consultationGrid.feature"},
        glue = "ru.altarix.edc2.steps"
        /*tags = {"@auth"})*/)

public class TestExec {

    private enum BrowserType {
        CHROME, CHROME_REMOTE
    }

    @BeforeAll
    public static void setTestRunSetup(String browser) {
        // browser = System.getProperty("browsertype");  // ex. -Dbrowsertype=chrome
        Configuration.timeout = 10000;
        Configuration.startMaximized = true;
        Configuration.baseUrl = "http://edc-test.mos.ru/";//System.getProperty("url");
        //BrowserType browserType = BrowserType.valueOf(browser.toUpperCase());
//        switch (browserType) {
//            case CHROME:
        //WebDriverManager.chromedriver().setup();
        Configuration.browser = "chrome";
        // break;
//            case CHROME_REMOTE:
//                WebDriverManager.chromedriver().setup();
//                Configuration.browser = SelenoidWebDriverProvider.class.getName();
//                break;
//            default:
//                throw new IllegalArgumentException("No such browser type: " + browser);
    }
}




