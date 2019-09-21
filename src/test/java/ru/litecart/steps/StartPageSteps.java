package ru.litecart.steps;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.Configuration;
import cucumber.api.java.en.Given;

import static com.codeborne.selenide.Condition.not;
import static com.codeborne.selenide.Selenide.open;
import static ru.litecart.TestExec.setTestRunSetup;
import static ru.litecart.pages.StartPage.Login;

public class StartPageSteps {

    @Given("^open start page$")
    public void openStartPage()   {
        setTestRunSetup();
        open(Configuration.baseUrl);
        Login.shouldBe(Condition.visible);

    }
}
