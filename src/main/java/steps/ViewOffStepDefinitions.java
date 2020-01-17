package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static com.codeborne.selenide.WebDriverRunner.getWebDriver;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.OffStartPage.*;
import static pages.OffStartPage.arrowOff;
import static pages.ViewOffPage.*;
import static pages.ViewOffPage.buttonDelete;
import static pages.ViewOffPage.buttonNextOff;
import static pages.ViewOffPage.buttonPrevOff;
import static pages.ViewOffPage.buttonRestart;
import static pages.ViewOffPage.buttonSave;
import static pages.ViewOffPage.emergencyOff;
import static pages.ViewOffPage.nameDateCreate;
import static pages.ViewOffPage.numberOff;
import static pages.ViewOffPage.plannedOff;
import static pages.ViewOffPage.reasonOff;
import static pages.ViewOffPage.scrollToFieldReasonOfDelete;
import static pages.ViewOffPage.titleOff;

public class ViewOffStepDefinitions {


    @And("^check that emergency off in card off is \"([^\"]*)\"$")
    public void checkThatEmergencyOffInCardOffIs(String textEmergencyOff) {
        emergencyOff.find(By.xpath("//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']//*[.='" + textEmergencyOff + "']")).shouldBe(exist);

    }


    @And("^check that buttonSave is displayed$")
    public void checkThatButtonSaveIsDisplayed() {
        buttonSave.shouldBe(visible);
    }


    @And("^check that buttonDelete is displayed$")
    public void checkThatButtonDeleteIsDisplayed() {
        buttonDelete.shouldBe(visible);
    }

    @And("^check that buttonRestart is displayed$")
    public void checkThatButtonRestartIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        buttonRestart.shouldBe(visible);
    }


    @And("^scroll to reason of delete$")
    public Void scrollToReasonOfDelete() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", scrollToFieldReasonOfDelete);
    }

    @And("^check that element next off is displayed$")
    public void checkThatElementNextOffIsDisplayed() {
        buttonNextOff.shouldBe(visible);
    }

    @And("^check that element prev off is disabled$")
    public void checkThatElementPrevOffIsDisabled() {
        buttonPrevOff.shouldBe(disabled);
    }

    @And("^check that element title off  is displayed$")
    public void checkThatElementTitleOffIsDisplayed() {
        titleOff.shouldBe(visible);
    }

    @And("^check that numberOff is displayed$")
    public void checkThatNumberOffIsDisplayed() {
        numberOff.shouldBe(visible);
    }

    @And("^check that element name date create is displayed$")
    public void checkThatElementNameDateCreateIsDisplayed() {
        nameDateCreate.shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in off$")
    public void checkThatElementWithNameIsDisplayedInOff(String text) {
        $(By.xpath("//div[@class = 'card']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^check that element reason off is displayed$")
    public void checkThatElementReasonOffIsDisplayed() {
        reasonOff.shouldHave(text("Причина отключения, ход работ"));
    }

    @And("^check that element reason delete off is displayed$")
    public void checkThatElementReasonDeleteOffIsDisplayed() {
        reasonOff.shouldHave(text("Причина удаления"));
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in off$")
    public void checkThatElementWithNameIsNotDisplayedInOff(String text) {
        $(By.xpath("//div[@class = 'card']//*[.='" + text + "']")).shouldNotBe(visible);
    }

    @And("^click collapse on$")
    public void clickCollapseOn() {
        arrowOff.click();
    }

    @And("^check that button prev off is disabled$")
    public void checkThatButtonPrevOffIsDisabled() {
        buttonPrevOff.shouldNotBe(enabled);
    }

    @And("^click button next off$")
    public void clickButtonNextOff() {
        buttonNextOff.click();
    }

    @And("^check that button prev off is enable$")
    public void checkThatButtonPrevOffIsEnable() {
        buttonPrevOff.shouldBe(enabled);
    }

    @And("^click button prev off$")
    public void clickButtonPrevOff() {
        buttonPrevOff.click();
    }

    @And("^click button with text \"([^\"]*)\" in cardOff$")
    public void clickButtonWithTextInCardOff(String buttonName) {
        if (buttonName.equals("Аварийное отключение") || buttonName.equals("Плановое отключение"))
            $(By.xpath("//div[@class='disabling-view']//span[contains (text(), '" + buttonName + "')]")).click();
        else if (buttonName.equals("Редактировать") || buttonName.equals("смотреть все"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + buttonName + "')]")).click();
        else
            $(By.xpath("//div[@class='disabling-view']//button[contains (text(), '" + buttonName + "')]")).click();
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in cardOff$")
    public void checkThatFieldIsInCardOff(String fieldName, String value) {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//span")).shouldHave(text(value));

    }

    @And("^check viewOff is plannedOff in cardOff$")
    public void checkViewOffIsPlannedOffInCardOff() {
        $(By.xpath("//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']")).shouldHave(attribute("value", "on"));
        plannedOff.find(byText("Плановое отключение"));
    }

    @And("^check viewOff is emergencyOff in cardOff$")
    public void checkViewOffIsEmergencyOffInCardOff() {
        $(By.xpath("//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']")).shouldHave(attribute("value", "on"));
        emergencyOff.find(byText("Аварийное отключение"));
    }

    @And("^type to input \"([^\"]*)\" in field \"([^\"]*)\" in cardOff$")
    public void typeToInputInFieldInCardOff(String value, String fieldName) {
        if (fieldName.equals("Причина удаления"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//textarea")).sendKeys(value);
        else
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//input")).sendKeys(value);
    }

    @And("^copy number off from cardOff in Clipboard$")
    public void copyNumberOffFromCardOffInClipboard() {
        String number = $(By.xpath("//div[@class='disabling-view']//a")).getText().substring(13, 20);
        StringSelection stringSelection = new StringSelection(number);
        Clipboard clpbrd = Toolkit.getDefaultToolkit().getSystemClipboard();
        clpbrd.setContents(stringSelection, null);
    }

    @And("^click to field with name \"([^\"]*)\" in cardOff$")
    public void clickToFieldWithNameInCardOff(String fieldName) {
        if (fieldName.equals("Тип отключения"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//span/span/span")).click();
        else
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//input")).click();
    }

    @And("^clear type off in cardOff$")
    public void clearTypeOffInCardOff() {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Тип отключения')]/..//td[2]//span/span/span[2]")).click();
    }

    @And("^click to category off in cardOff$")
    public void clickToCategoryOffInCardOff() {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li[1]/span[1]")).click();
    }

    @And("^click to type off with name \"([^\"]*)\" in cardOff$")
    public void clickToTypeOffWithNameInCardOff(String typeName) {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li[1]/ul//*[contains (text(), '" + typeName + "')]")).click();
    }

    @And("^clear date off in cardOff$")
    public void clearDateOffInCardOff() {
        $(By.xpath("/html/body/div[2]/div/div/div/div/div[1]/div/input")).clear();
    }

    @And("^click emptyInCardOff$")
    public void clickEmptyInCardOff() {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Дата создания')]")).click();
    }


    @And("^check that element with name \"([^\"]*)\" is disabled in cardOff$")
    public void checkThatElementWithNameIsDisabledInCardOff(String fieldName) {
        if (fieldName.equals("Дата создания"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]")).shouldBe(disabled);
        else if (fieldName.equals("Тип отключения"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]/div/span/span/span/span")).shouldBe(disabled);
        else if (fieldName.equals("Вид отключения"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]/div/div/label[2]/span/span")).shouldBe(disabled);
        else if (fieldName.equals("Дата отключения") || fieldName.equals("Планируемая дата включения") || fieldName.equals("Фактическая дата включения"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]/div/span/input")).shouldBe(disabled);
        else if (fieldName.equals("Дома для отключения"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]/div/div")).shouldBe(disabled);
        else if (fieldName.equals("Ведёт работы"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//input")).shouldBe(disabled);
        else
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//textarea")).shouldBe(disabled);
    }

    @And("^type to input text \"([^\"]*)\" in dateOff in cardOff$")
    public void typeToInputTextInDateOffInCardOff(String text) {
        $(By.xpath("/html/body/div[3]/div/div/div/div/div[1]/div/input")).sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in plannedDateOn in cardOff$")
    public void typeToInputTextInPlannedDateOnInCardOff(String text) {
        $(By.xpath("/html/body/div[4]/div/div/div/div/div[1]/div/input")).sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in factedDateOn in cardOff$")
    public void typeToInputTextInFactedDateOnInCardOff(String text) {
        $(By.xpath("/html/body/div[5]/div/div/div/div/div[1]/div/input")).sendKeys(text);
    }

    @And("^clear reason off in cardOff$")
    public void clearReasonOffInCardOff() {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Причина отключения, ход работ')]/..//td[2]//textarea")).clear();
    }


    @And("^click to calendar in field date off$")
    public void clickToCalendarInFieldDateOff() {
        $(By.xpath("/html/body/div[3]/div/div/div/div/div[1]/div/input")).click();
    }

    @And("^clear field with name \"([^\"]*)\" in cardOff$")
    public void clearFieldWithNameInCardOff(String fieldName) {
        Actions builder = new Actions(getWebDriver());
        builder.moveToElement($(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//input"))).click(($(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//i"))));
        Action mouseoverAndClick = builder.build();
        mouseoverAndClick.perform();
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in field address in cardOff$")
    public void checkThatElementWithNameIsDisplayedInFieldAddressInCardOff(String fieldName) {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]")).shouldBe(visible);
    }

    @And("^check that list of organization is not displayed in cardOff$")
    public void checkThatListOfOrganizationIsNotDisplayedInCardOff() {
        $(By.xpath("/html/body/div[7]/div/div/ul")).shouldNotBe(visible);
    }

    @And("^type to input text \"([^\"]*)\" in field with name \"([^\"]*)\"$")
    public void typeToInputTextInFieldWithName(String text, String fieldName) {
        if (fieldName.equals("Причина отключения, ход работ"))
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//textarea")).sendKeys(text);
        else
            $(By.xpath("//div[@class='disabling-view']//*[contains (text(), '" + fieldName + "')]/..//td[2]//input")).sendKeys(text);
    }

    @And("^clear organization in cardOff$")
    public void clearOrganizationInCardOff() {
        $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Ведёт работы')]/..//input")).clear();
    }

    @And("^click clear address$")
    public void clickClearAddress() {
        $(By.xpath("//*[@id=\"outage-house\"]/div[2]/div[2]/div[1]/div[2]/i")).click();
    }

    @And("^click to calendar in field planned date off$")
    public void clickToCalendarInFieldPlannedDateOff() {
        $(By.xpath("/html/body/div[4]/div/div/div/div/div[1]/div/input")).click();
    }

    @And("^click to calendar in field facted date off$")
    public void clickToCalendarInFieldFactedDateOff() {
        $(By.xpath("/html/body/div[5]/div/div/div/div/div[1]/div/input")).click();
    }

    @And("^check notification warning planned off is displayed$")
    public void checkNotificationWarningPlannedOffIsDisplayed() {
        $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(text("Дата отключения не может быть больше даты планового включения")).shouldBe(visible);
    }

    @And("^check notification warning facted off is displayed$")
    public void checkNotificationWarningFactedOffIsDisplayed() {
        $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(text("Дата отключения не может быть больше чем Дата фактического включения")).shouldBe(visible);

    }

    @And("^check notification warning planned and facted off is displayed$")
    public void checkNotificationWarningPlannedAndFactedOffIsDisplayed() {
        $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(text("Дата отключения не может быть больше чем дата фактического и плановго включения")).shouldBe(visible);
    }

    @And("^check notification warning off is displayed$")
    public void checkNotificationWarningOffIsDisplayed() {
        $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Дата отключения, Планируемая дата включения")).shouldBe(visible);

    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in consultation$")
    public void checkThatElementWithNameIsNotDisplayedInConsultation(String elementName) {
        $(By.xpath("//div[@class='card']//td[contains(text(),'" + elementName + "')]")).shouldNotBe(visible);
    }

    @And("^check that planned off in card off is \"([^\"]*)\"$")
    public void checkThatPlannedOffInCardOffIs(String emergencyOff)   {
        plannedOff.find(By.xpath("//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']//*[.='" + emergencyOff + "']")).shouldBe(exist);
    }
}



