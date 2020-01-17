package steps;

import com.codeborne.selenide.Condition;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.NewConsultationPage.*;

public class NewConsultationStepDefinitions {


    @And("^check that element consultation is displayed$")
    public void checkThatElementConsultationIsDisplayed() {
        checkboxConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element request is selected$")
    public void checkThatElementRequestIsSelected() {
        checkboxRequest.shouldBe(Condition.visible).isSelected();
    }

    @And("^click checkbox consultation$")
    public void clickCheckboxConsultation() {
        checkboxConsultation.click();
    }

    @And("^check that element descriptionConsultation is displayed$")
    public void checkThatElementDescriptionConsultationIsDisplayed() {
        fieldDescriptionConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element entranceConsultation is displayed$")
    public void checkThatElementEntranceConsultationIsDisplayed() {
        fieldEntranceConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element floorConsultation is displayed$")
    public void checkThatElementFloorConsultationIsDisplayed() {
        fieldFloorConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element apartmentConsultation is displayed$")
    public void checkThatElementApartmentConsultationIsDisplayed() {
        fieldApartmentConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element contactPersonConsultation is displayed$")
    public void checkThatElementContactPersonConsultationIsDisplayed() {
        fieldContactPersonConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element save consultation is displayed$")
    public void checkThatElementSaveConsultationIsDisplayed() {
        buttonSaveConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element warning new consultation is displayed$")
    public void checkThatElementWarningNewConsultationIsDisplayed() {
        warningNewConsultation.shouldBe(Condition.visible);
    }

    @And("^click to close form new consultation$")
    public void clickToCloseFormNewConsultation() {
        buttonCloseFormConsultation.click();
    }

    @And("^check that element consultationType is displayed$")
    public void checkThatElementConsultationTypeIsDisplayed() {
        fieldTypeConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element adressConsultation is displayed$")
    public void checkThatElementAdressConsultationIsDisplayed() {
        fieldAddressConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element mainPhoneConsultation is displayed$")
    public void checkThatElementMainPhoneConsultationIsDisplayed() {
        fieldMainPhoneConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element additionalPhoneConsultation is displayed$")
    public void checkThatElementAdditionalPhoneConsultationIsDisplayed() {
        fieldAdditionalPhoneConsultation.shouldBe(Condition.visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form new consultation$")
    public void checkThatElementWithNameIsDisplayedInFormNewConsultation(String elementName) {
        $(By.xpath("//div[@id='request']//*[.='" + elementName + "']")).shouldBe(visible);
    }
}
