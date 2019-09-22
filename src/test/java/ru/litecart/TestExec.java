package ru.litecart;

import com.codeborne.selenide.Configuration;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/features/buyDucks.feature"},
        glue = "steps"
        )

public class TestExec {
    private static final String CLASS_NAME = TestExec.class.getName();


    @BeforeClass
    public static void init() {
        // browser = System.getProperty("browsertype");  // ex. -Dbrowsertype=chrome
        Configuration.timeout = 10000;
        Configuration.startMaximized = true;
        Configuration.baseUrl = "http://litecart.stqa.ru/en/";//System.getProperty("url");
        Configuration.browser = "chrome";
        Configuration.fastSetValue=true;
    }
}




