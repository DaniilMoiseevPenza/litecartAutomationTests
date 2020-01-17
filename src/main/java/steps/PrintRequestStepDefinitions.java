package steps;

import com.codeborne.selenide.Condition;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.PrintRequestPage.*;

public class PrintRequestStepDefinitions {


    @And("^click button with text \"([^\"]*)\" in form print request$")
    public void clickButtonWithTextInFormPrintRequest(String buttonName) {
        $(By.xpath("//div[@class='print-request']//*[contains(text(),'" + buttonName + "')]//..//span")).click();
    }

    @And("^check that element with text \"([^\"]*)\" is displayed in form print request$")
    public void checkThatElementWithTextIsDisplayedInFormPrintRequest(String elementName) {
        $(By.xpath("//div[@class='print-request']//*[contains(text(),'" + elementName + "')]")).waitUntil(visible, 10000);
        $(By.xpath("//div[@class='print-request']//*[contains(text(),'" + elementName + "')]")).shouldBe(Condition.visible);
    }

    @And("^check that element with text \"([^\"]*)\" is not displayed in form print request$")
    public void checkThatElementWithTextIsNotDisplayedInFormPrintRequest(String elementName) {
        $(By.xpath("//div[@class='print-request']//*[contains(text(),'" + elementName + "')]")).shouldNotBe(Condition.visible);
    }

    @And("^click button exit in form print request$")
    public void clickButtonExitInFormPrintRequest() {
        exitButtonPrintRequest.click();
    }

    @And("^click button with name \"([^\"]*)\" in form print request card$")
    public void clickButtonWithNameInFormPrintRequestCard(String buttonName) {
        $(By.xpath("//div[@class='print-request']//*[contains(text(),'" + buttonName + "')]//..")).click();
    }

    @And("^check pop-up message at print of request is displayed$")
    public void checkPopUpMessageAtPrintOfRequestIsDisplayed() {
        notification.shouldHave(text("Подождите, файл формируется.")).waitUntil(visible, 10000);
    }
}
