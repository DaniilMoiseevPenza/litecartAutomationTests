package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.ViewModalRequestPage.*;

public class ViewModalRequestStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in modal form request$")
    public void checkThatElementWithNameIsDisplayedInModalFormRequest(String fieldName) {
        // $(By.xpath("//div[@id='view-request']//*[contains(text(),'Действие')]")).waitUntil(not(visible),10000);
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]//../td[2]/div")).isDisplayed();
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in modal form request$")
    public void checkThatElementWithNameIsNotDisplayedInModalFormRequest(String fieldName) {
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]")).shouldNotBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is visible in modal form request$")
    public void checkThatButtonWithTextIsVisibleInModalFormRequest(String buttonName) {
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + buttonName + "')]")).shouldBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is disable in modal form request$")
    public void checkThatButtonWithTextIsDisableInModalFormRequest(String buttonName) {
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + buttonName + "')]")).isEnabled();
    }

    @And("^check that button with text \"([^\"]*)\" is not visible in modal form request$")
    public void checkThatButtonWithTextIsNotVisibleInModalFormRequest(String buttonName) {
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + buttonName + "')]")).shouldNotBe(visible);
    }


    @And("^click close card of request$")
    public void clickCloseCardOfRequest() {
        closeModalCardOfRequest.click();
    }

    @And("^check that number request in modal form request is displayed$")
    public void checkThatNumberRequestIsDisplayed() {
        requestNumberInModalWindow.shouldHave(text("Просмотр заявки №"));
    }


    @And("^scroll to address in ModalWindow$")
    public Void scrollToAddressInModalWindow() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldAddressInModalWindow);
    }

    @And("^scroll to additionalPhone in ModalWindow$")
    public Void scrollToAdditionalPhoneInModalWindow() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldAdditionalPhoneInModalWindow);
    }

    @And("^scroll to addFile in ModalWindow$")
    public Void scrollToAddFileInModalWindow() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldAddCommentInWindow);
    }


}

