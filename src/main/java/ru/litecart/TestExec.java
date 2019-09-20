package ru.litecart;

import com.codeborne.selenide.Configuration;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.jupiter.api.BeforeAll;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/features/"},
        glue = "ru.litecart.steps"
        )

public class TestExec {


    @BeforeAll
    public static void setTestRunSetup(String browser) {
        // browser = System.getProperty("browsertype");  // ex. -Dbrowsertype=chrome
        Configuration.timeout = 10000;
        Configuration.startMaximized = true;
        Configuration.baseUrl = "http://litecart.stqa.ru/en/";//System.getProperty("url");
        Configuration.browser = "chrome";

    }
}




