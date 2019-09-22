package steps;

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
    public static void clickTextWithName(String text) throws Throwable {
        $(byText(text)).click();
    }




    @And("^sleep$")
    public void sleep() throws Throwable {
        Thread.sleep(1000);
    }

    @When("^check button with name \"([^\"]*)\" is disable$")
    public void checkButtonWithNameIsDisable(String buttonName)   {
        $(By.xpath("//button[contains(text(),'"+buttonName+"')]")).shouldBe(disabled);
    }
}
