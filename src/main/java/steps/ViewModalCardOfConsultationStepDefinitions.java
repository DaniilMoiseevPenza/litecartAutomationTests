package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.ViewModalCardOfConsultationPage.*;

public class ViewModalCardOfConsultationStepDefinitions {


    @And("^click to close modal card of consultation$")
    public void clickToCloseModalCardOfConsultation() {
        closeModalCardOfConsultation.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in modal form consultation$")
    public void checkThatElementWithNameIsDisplayedInModalFormConsultation(String text) {
        String xpath = "//div[@id='view-consultation']//div[contains(text(), '" + text + "')]";
        $(By.xpath(xpath)).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in modal form consultation$")
    public void checkThatElementWithNameIsNotDisplayedInModalFormConsultation(String text) {
        String xpath = "//div[@id='view-consultation']//div[contains(text(), '" + text + "')]";
        $(By.xpath(xpath)).shouldNotBe(visible);
    }

    @And("^scroll to by request in ModalConsultation$")
    public Void scrollToByRequestInModalConsultation() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", scrollToByRequestInModalCardOfConsultation);
    }

    @And("^check that element red pictogramm is displayed in head of modal card consultation$")
    public void checkThatElementRedPictogrammIsDisplayedInHeadOfModalCardConsultation() {
        modalCardOfConsultationPictogramm.waitUntil(visible, 10000);
        modalCardOfConsultationPictogramm.shouldHave(attribute("class", "push")).shouldBe(visible);
    }

    @And("^check that element grey pictogramm is displayed in head of modal card consultation$")
    public void checkThatElementGreyPictogrammIsDisplayedInHeadOfModalCardConsultation() {
        modalCardOfConsultationPictogramm.shouldHave(attribute("class", "push-solved")).shouldBe(visible);
    }


    @And("^check that element grey pictogramm is not displayed in head of modal card consultation$")
    public void checkThatElementGreyPictogrammIsNotDisplayedInHeadOfModalCardConsultation() {
        modalCardOfConsultationPictogramm.shouldNotHave(attribute("class", "push-solved"));
    }

    @And("^check that element red pictogramm is not displayed in head of modal card consultation$")
    public void checkThatElementRedPictogrammIsNotDisplayedInHeadOfModalCardConsultation() {
        modalCardOfConsultationPictogramm.shouldNotHave(attribute("class", "push"));
    }
}

