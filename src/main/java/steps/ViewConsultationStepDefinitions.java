package steps;

import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.ViewConsultationPage.*;
import static pages.ViewConsultationPage.addTheCommentUsuallyConsultation;
import static pages.ViewConsultationPage.buttonProblemSolved;
import static pages.ViewConsultationPage.cardOfConsultationHyperlinkOff;
import static pages.ViewConsultationPage.cardOfConsultationHyperlinkRequest;
import static pages.ViewConsultationPage.collapseAndExpandConsultation;
import static pages.ViewConsultationPage.fieldAdditionalPhone;
import static pages.ViewConsultationPage.fieldByOff;
import static pages.ViewConsultationPage.fieldByRequest;
import static pages.ViewConsultationPage.fieldCloseProblemSituation;
import static pages.ViewConsultationPage.fieldContactPerson;
import static pages.ViewConsultationPage.fieldMainPhone;
import static pages.ViewConsultationPage.fieldProblemSituation;
import static pages.ViewConsultationPage.fieldProblemSolved;
import static pages.ViewConsultationPage.fieldProvidedConsultation;
import static pages.ViewConsultationPage.fieldTypeOfConsultation;
import static pages.ViewConsultationPage.nextConsultation;
import static pages.ViewConsultationPage.numberOfConsultation;
import static pages.ViewConsultationPage.pictogrammInCardOfConsultation;
import static pages.ViewConsultationPage.prevConsultation;
import static pages.ViewConsultationPage.scrollToAddress;
import static pages.ViewConsultationPage.scrollToByRequest;
import static pages.ViewConsultationPage.titleOfConsultation;

public class ViewConsultationStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in consultation$")
    public void checkThatElementWithNameIsDisplayedInConsultation(String elementName) {
        $(By.xpath("//div[@class='card']//td[contains(text(),'" + elementName + "')]")).shouldBe(visible);
    }

    @And("^check that element next consultation is displayed$")
    public void checkThatElementNextConsultationIsDisplayed() {
        nextConsultation.shouldBe(visible);
    }

    @And("^check that element prev consultation is displayed$")
    public void checkThatElementPrevConsultationIsDisplayed() {
        prevConsultation.shouldBe(visible);

    }

    @And("^check that element collapse consultation is displayed$")
    public void checkThatElementCollapseConsultationIsDisplayed() {
        collapseAndExpandConsultation.shouldBe(visible);
    }

    @And("^check that element title of consultation is displayed$")
    public void checkThatElementTitleOfConsultationIsDisplayed() {
        titleOfConsultation.shouldBe(visible);
    }

    @And("^check that number consultation is displayed$")
    public void checkThatNumberConsultationIsDisplayed() {
        numberOfConsultation.shouldBe(visible);
    }

    @And("^click collapse consultation$")
    public void clickCollapseConsultation() {
        collapseAndExpandConsultation.click();
    }


    @And("^check that button problem solved is displayed in consultation$")
    public void checkThatButtonProblemSolvedIsDisplayedInConsultation() {
        buttonProblemSolved.shouldBe(visible);
    }

    @And("^scroll to by request$")
    public Void scrollToByRequest() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", scrollToByRequest);
    }

    @And("^check that element grey pictogramm is displayed in title of consultation$")
    public void checkThatElementGreyPictogrammIsDisplayedInTitleOfConsultation() {
        pictogrammInCardOfConsultation.shouldHave(attribute("class", "push-solved"));
    }

    @And("^check that element red pictogramm is displayed in title of consultation$")
    public void checkThatElementRedPictogrammIsDisplayedInTitleOfConsultation() {
        pictogrammInCardOfConsultation.shouldHave(attribute("class", "push"));
    }

    @And("^scroll to address$")
    public Void scrollToAddress() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", scrollToAddress);
    }

    @And("^check that element problem situation is displayed$")
    public void checkThatElementProblemSituationIsDisplayed() {
        fieldProblemSituation.shouldBe(visible);
    }

    @And("^check that element problem solved is displayed$")
    public void checkThatElementProblemSolvedIsDisplayed() {
        fieldProblemSolved.shouldBe(visible);
    }

    @And("^check that element close problem situation is displayed$")
    public void checkThatElementCloseProblemSituationIsDisplayed() {
        fieldCloseProblemSituation.shouldBe(visible);
    }

    @And("^check that element type consultation is displayed$")
    public void checkThatElementTypeConsultationIsDisplayed() {
        fieldTypeOfConsultation.shouldBe(visible);
    }

    @And("^check that element contact person of consultation is displayed$")
    public void checkThatElementContactPersonOfConsultationIsDisplayed() {
        fieldContactPerson.shouldBe(visible);
    }

    @And("^check that element main phone is displayed in consultation$")
    public void checkThatElementMainPhoneIsDisplayedInConsultation() {
        fieldMainPhone.shouldBe(visible);
    }

    @And("^check that element additional phone is displayed in consultation$")
    public void checkThatElementAdditionalPhoneIsDisplayedInConsultation() {
        fieldAdditionalPhone.shouldBe(visible);
    }

    @And("^check that element by request is displayed in consultation$")
    public void checkThatElementByRequestIsDisplayedInConsultation() {
        fieldByRequest.shouldBe(visible);
    }

    @And("^check that element by off is displayed in consultation$")
    public void checkThatElementByOffIsDisplayedInConsultation() {
        fieldByOff.shouldBe(visible);
    }

    @And("^check that element provided consultation in consultation$")
    public void checkThatElementProvidedConsultationInConsultation() {
        fieldProvidedConsultation.shouldBe(visible);
    }

    @And("^check that element any pictogramm is not displayed in title of consultation$")
    public void checkThatElementAnyPictogrammIsNotDisplayedInTitleOfConsultation() {
        pictogrammInCardOfConsultation.shouldNotHave(attribute("class", "push-solved")).shouldNotHave(attribute("class", "push"));
    }

    @And("^check that button Addcomment is displayed in consultation$")
    public void checkThatButtonAddcommentIsDisplayedInConsultation() {
        addTheCommentUsuallyConsultation.shouldBe(visible);
    }

    @And("^check that element prev consultation is disabled$")
    public void checkThatElementPrevConsultationIsDisabled() {
        prevConsultation.shouldBe(disabled);
    }

    @And("^click next consultation$")
    public void clickNextConsultation() {
        nextConsultation.click();
    }

    @And("^check that element prev consultation is enabled$")
    public void checkThatElementPrevConsultationIsEnabled() {
        prevConsultation.shouldBe(enabled);
    }

    @And("^click on hyperlink by request$")
    public void clickOnHyperlinkByRequest() {
        cardOfConsultationHyperlinkRequest.click();
    }

    @And("^click on hyperlink by off$")
    public void clickOnHyperlinkByOff() {
        cardOfConsultationHyperlinkOff.click();
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in modal card of consultation$")
    public void checkThatFieldIsInModalCardOfConsultation(String fieldName, String value) {
        waiter.waitUntil(not(visible), 10000);
        if (fieldName.equals("Этаж"))
            $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName + "')]//../td[4]")).shouldHave(text(value));
        else if (fieldName.equals("Квартира"))
            $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName + "')]//../td[6]")).shouldHave(text(value));
        else
            $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName + "')]//../td[2]")).shouldHave(text(value));

    }

    @And("^check that element with name \"([^\"]*)\" is visible in modal card of consultation$")
    public void checkThatElementWithNameIsVisibleInModalCardOfConsultation(String text) {
        $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^check that field \"([^\"]*)\" is not \"([^\"]*)\" in modal card of consultation$")
    public void checkThatFieldIsNotInModalCardOfConsultation(String fieldName, String value) {
//            if (fieldName.equals("Основной телефон"))
        $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).shouldNotHave(text(value));
//            else {
//                $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//input")).shouldNotHave(attribute("value",value));
//            }
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" or \"([^\"]*)\" is \"([^\"]*)\" in modal card of consultation$")
    public void checkThatFieldIsOrIsInModalCardOfConsultation(String fieldName1, String value1, String fieldName2, String value2) {
        if ($(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName1 + "')]/..//td[2]")).getText().equals(value1))
            Assert.assertTrue(1 == 1);
        else if ($(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName2 + "')]/..//td[2]")).getText().equals(value2))
            Assert.assertTrue(1 == 1);
        else
            Assert.assertTrue(2 == 1);

    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" and \"([^\"]*)\" is \"([^\"]*)\" or \"([^\"]*)\" is \"([^\"]*)\" in modal card of consultation$")
    public void checkThatFieldIsAndIsOrIsInModalCardOfConsultation(String fieldName1, String value1, String fieldName2, String value2, String fieldName3, String value3) {
        if ($(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName1 + "')]/..//td[2]")).getText().equals(value1) && $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName2 + "')]/..//td[2]")).getText().equals(value2))
            Assert.assertTrue(1 == 1 && 2 == 2);
        else if ($(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + fieldName3 + "')]/..//td[2]")).getText().equals(value3))
            Assert.assertTrue(1 == 1 && 2 == 2);
        else
            Assert.assertTrue(3 == 1);
    }

    @And("^check that element with name \"([^\"]*)\" is not visible in modal card of consultation$")
    public void checkThatElementWithNameIsNotVisibleInModalCardOfConsultation(String text) {
        $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + text + "')]")).shouldNotBe(visible);
    }

    @And("^check that checkbox \"([^\"]*)\" is selected$")
    public void checkThatCheckboxIsDisplayedAndSelected(String selectedName) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + selectedName + "')]/..//td[2]/label/span")).shouldHave(attribute("class", "ant-checkbox ant-checkbox-checked ant-checkbox-disabled"));
    }

    @And("^check that checkbox \"([^\"]*)\" is not selected$")
    public void checkThatCheckboxIsNotSelected(String selectedName) {
        $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'" + selectedName + "')]/..//td[2]/label/span")).shouldNotHave(attribute("class", "ant-checkbox ant-checkbox-checked ant-checkbox-disabled"));
    }

    @And("^check that button with name \"([^\"]*)\" is not visible in modal card of consultation$")
    public void checkThatButtonWithNameIsNotVisibleInModalCardOfConsultation(String text) {
        $(By.xpath("//div[@id='view-consultation']//button[contains(text(),'" + text + "')]")).shouldNotBe(visible);
    }


    @And("^check that checkbox \"([^\"]*)\" is disabled and is selected in cardOfConsultation$")
    public void checkThatCheckboxIsDisabledAndIsSelectedInCardOfConsultation(String selectedName) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='request-view']//*[contains(text(),'" + selectedName + "')]/..//td[2]/label/span")).shouldHave(attribute("class", "ant-checkbox ant-checkbox-checked ant-checkbox-disabled"));
    }

    @And("^check that checkbox \"([^\"]*)\" is disabled and is not selected in cardOfConsultation$")
    public void checkThatCheckboxIsDisabledAndIsNotSelectedInCardOfConsultation(String selectedName) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='request-view']//*[contains(text(),'" + selectedName + "')]/..//td[2]/label/span")).shouldHave(attribute("class", "ant-checkbox ant-checkbox-disabled"));
    }

    @And("^check that button with text \"([^\"]*)\" is displayed in consultation$")
    public void checkThatButtonWithTextIsDisplayedInConsultation(String buttonName) {
        $(By.xpath("//div[@class='card']//button[contains(text(), '" + buttonName + "')]")).shouldBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is not displayed in consultation$")
    public void checkThatButtonWithTextIsNotDisplayedInConsultation(String buttonName) {
        $(By.xpath("//div[@class='card']//button[contains(text(), '" + buttonName + "')]")).shouldNotBe(visible);
    }

    @And("^check that button with name \"([^\"]*)\" is visible in modal card of consultation$")
    public void checkThatButtonWithNameIsVisibleInModalCardOfConsultation(String buttonName) {
        $(By.xpath("//div[@id='view-consultation']//button[contains(text(),'" + buttonName + "')]")).shouldBe(visible);
    }


//    @And("^check that apartment is \"([^\"]*)\"$")
//    public void checkThatApartmentIs(String apartment)  {
//       fieldApartment.shouldHave(attribute("content",apartment));
//    }
}

