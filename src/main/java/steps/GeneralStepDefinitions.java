package steps;


import com.codeborne.selenide.Configuration;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.WebDriverRunner.hasWebDriverStarted;
import static com.codeborne.selenide.WebDriverRunner.url;
import static pages.AuthPage.*;
import static pages.AuthPage.login;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.advancedFilter;
import static pages.DispatcherCentrPage.waiter;
import static pages.UpPage.*;
import static pages.UpPage.supportToOpen;


public class GeneralStepDefinitions {


    //Блок общих шагов дя всех страниц
    @And("^check that page is \"([^\"]*)\"$")
    public void checkThatPageIs(String namePage) {
        if (namePage.contentEquals("center")) {
            advancedFilter.waitUntil(visible, 10000);
        }
        Assert.assertEquals(Configuration.baseUrl + namePage,url());

    }

    @When("^press button with text \"([^\"]*)\"$")
    public void pressButtonWithText(String button) {
        $(byText(button)).waitUntil(visible,10000);
        $(byText(button)).click();

    }

    @Then("^error message with text \"([^\"]*)\" is displayed$")
    public void errorMessageWithTextIsDisplayed(String errorText) {
        $(byText(errorText)).shouldBe(visible);
    }

    @Given("^open start page \"([^\"]*)\"$")
    public void openStartPage(String baseUrl) {
        open(Configuration.baseUrl + baseUrl);

    }

    @And("^check that element with name \"([^\"]*)\" is displayed$")
    public void checkThatElementWithNameIsDisplayed(String elementName) {
        waiter.waitUntil(not(visible), 10000);
        $(byText(elementName)).waitUntil(visible.because("Элемент с тектстом " + elementName + " не найден"), 10000);
        if ($(byText(elementName)).isDisplayed())
            $(byText(elementName)).shouldBe(visible.because("Элемент с тектстом " + elementName + " не найден"));
    }

    @Then("^click to open support$")
    public void clickToOpenSupport() {
        supportToOpen.click();
    }

    @Then("^click button with \"([^\"]*)\"$")
    public void clickButtonWith(String text) {
        $(byText(text)).waitUntil(visible, 10000);
        $(byText(text)).click();
    }

    @And("^check that title page is \"([^\"]*)\"$")
    public void checkThatTitlePageIs(String title) {
        Assert.assertEquals(title,title());

    }

    @And("^check that button this text \"([^\"]*)\" disable$")
    public void checkThatButtonThisTextDisable(String buttonName) {
        $(byText(buttonName)).shouldNotBe(disabled);
    }


    @And("^check that text \"([^\"]*)\" is displayed$")
    public void checkThatTextIsDisplayed(String text) {
        $(byText(text)).shouldBe(visible);
    }

    @Given("^open start page$")
    public void openStartPage() {
        //if(!hasWebDriverStarted())
        open(Configuration.baseUrl);
    }

    @And("^logout$")
    public void logout() {
        clickToOpenSupport();
        $(byTitle("Выйти из системы")).click();
        login.waitUntil(visible, 10000);
        checkThatPageIs("login");

    }

    @And("^check that element with name \"([^\"]*)\" is not displayed$")
    public void checkThatElementWithNameIsNotDisplayed(String elementName) {
        $(byText(elementName)).shouldNotBe(visible);
    }

    @And("^scroll to line with name \"([^\"]*)\" in card$")
    public Object scrollToLineWithNameInCard(String lineName) {
        return executeJavaScript("arguments[0].scrollIntoView(true);", $(By.xpath("//div[@class='card']//*[contains(text(),'" + lineName + "')]")));
    }


    @And("^login <Login>$")
    public void loginLogin() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
