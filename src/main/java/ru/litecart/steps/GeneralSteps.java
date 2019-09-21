package ru.litecart.steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;


import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.*;
import static com.codeborne.selenide.Selenide.*;


public class GeneralSteps {

    @When("^click button with name \"([^\"]*)\"$")
    public void clickButtonWithName(String buttonName) throws Throwable {
            $(By.xpath("//button[contains(text(),'"+buttonName+"')]")).click();
    }

    @Then("^check that text \"([^\"]*)\" is visible$")
    public void checkThatTextIsVisible(String text) throws Throwable {
        $(byText(text)).shouldBe(visible);
    }

    @And("^click text with name \"([^\"]*)\"$")
    public void clickTextWithName(String text) throws Throwable {
        $(byText(text)).click();
    }

    @When("^set text \"([^\"]*)\" in field \"([^\"]*)\"$")
    public void setTextInField(String text, String field) throws Throwable {
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).setValue(text);
    }

    @And("^sleep$")
    public void sleep() throws Throwable {
        Thread.sleep(2000);
    }

}
