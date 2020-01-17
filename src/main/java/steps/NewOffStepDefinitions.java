package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.NewOffPage.*;

public class NewOffStepDefinitions {


    @And("^check that saveButton is displayed$")
    public void checkThatSaveButtonIsDisplayed() {
        saveButton.shouldBe(visible);
    }

    @And("^click button cancelNewOff$")
    public void clickButtonCancelNewOff() {
        cancelNewOff.click();
    }

    @And("^click saveButton$")
    public void clickSaveButton() {
        saveButton.click();
    }

    @And("^check that messageOff$")
    public void checkThatMessageOff() {
        messageAboutMandatoryFields.shouldBe(visible);
    }

    @And("^click checkboxEmergencyOff$")
    public void clickCheckboxEmergencyOff() {
        formNewOffEmergencyOff.click();
    }

    @And("^click field typeOff$")
    public void clickFieldTypeOff() {
        formNewOffTypeOff.click();
    }

    @And("^click categoryOff$")
    public void clickCategoryOff() {
        formNewOffCategoryOff.click();
    }

    @And("^click typeDefect$")
    public void clickTypeDefect() {
        formNewOffTypeDefect.click();
    }

    @And("^click button Choose$")
    public void clickButtonChoose() {
        buttonChoose.click();
    }

    @And("^type to input text \"([^\"]*)\" in blockHousesForOffAddressOff$")
    public void typeToInputTextInBlockHousesForOffAddressOff(String blockHousesForOffAddressOff) {
        blockHousesForOffFieldAddress.sendKeys(blockHousesForOffAddressOff);
    }

    @And("^click to first address in blockHousesForOffAddressOff$")
    public void clickToFirstAddressInBlockHousesForOffAddressOff() {
        formNewOffFirstAddress.click();
    }

    @And("^click button Add$")
    public void clickButtonAdd() {
        buttonAddAddress.click();
    }

    @And("^check that selected address is displayed$")
    public void checkThatSelectedAddressIsDisplayed() {
        selectedAddress.shouldBe(visible);
    }

    @And("^click button accept$")
    public void clickButtonAccept() {
        buttonAccept.click();
    }

    @And("^click that selected address$")
    public void clickThatSelectedAddress() {
        selectedAddress.click();
    }

    @And("^click checkbox entrance$")
    public void clickCheckboxEntrance() {
        checkboxEntrance.click();
    }

    @And("^click button accept entrance$")
    public void clickButtonAcceptEntrance() {
        formAddAppartmentButtonAcept.click();
    }

    @And("^check that selected address with entrance is displayed$")
    public void checkThatSelectedAddressWithEntranceIsDisplayed() {
        selectedAddressWithEntrance.shouldBe(visible);
    }

    @And("^type to input text \"([^\"]*)\" in blockHousesForOffWorkOff$")
    public void typeToInputTextInBlockHousesForOffWorkOff(String blockHousesForOffWorkOff) {
        formNewOffWork.sendKeys(blockHousesForOffWorkOff);
    }


    @And("^type to input text \"([^\"]*)\" in fieldDescription$")
    public void typeToInputTextInFieldDescription(String textFieldDescription) {
        fieldDescription.sendKeys(textFieldDescription);
    }


    @And("^check that messageAboutCreateOff is displayed$")
    public void checkThatMessageAboutCreateOffIsDisplayed() {
        messageAboutCreateOff.shouldBe(visible);
    }

    @And("^click to first organization$")
    public void clickToFirstOrganization() {
        firstOrganizationWork.click();
    }

    @And("^click field date off$")
    public void clickFieldDateOff() {
        formNewOffDateOff.click();
    }

    @And("^type to input text \"([^\"]*)\" in dateOff$")
    public void typeToInputTextInDateOff(String dateOff) {
        formNewOffDateOff.sendKeys(dateOff);
    }

    @And("^click emptyInFormNewOff$")
    public void clickEmptyInFormNewOff() {
        emptyInFormNewOff.click();
    }

    @And("^click field planned date on$")
    public void clickFieldPlannedDateOn() {
        formNewOffPlannedDateOn.click();
    }

    @And("^type to input text \"([^\"]*)\" in plannedDateOn$")
    public void typeToInputTextInPlannedDateOn(String plannedDateOn) {
        formNewOffPlannedDateOn.sendKeys(plannedDateOn);
    }

    @And("^click button with text \"([^\"]*)\" in form create off$")
    public void clickButtonWithTextInFormCreateOff(String buttonName) {
        if (buttonName.equals("смотреть все"))
            $(By.xpath("//div[@id='create-request']//div[contains (text(), '" + buttonName + "')]")).click();
        else
            $(By.xpath("//div[@id='create-request']//span[contains (text(), '" + buttonName + "')]")).click();
    }

    @And("^click to field with name \"([^\"]*)\" in form create off$")
    public void clickToFieldWithNameInFormCreateOff(String fieldName) {
        if (fieldName.equals("Ведёт работы"))
            $(By.xpath("//div[@id='create-request']//*[contains (text(), '" + fieldName + "')]/..//input")).click();
        else
            $(By.xpath("//div[@id='create-request']//*[contains (text(), '" + fieldName + "')]/..//span")).click();
    }


    @And("^click to type off with name \"([^\"]*)\" in form create off$")
    public void clickToTypeOffWithNameInFormCreateOff(String typeName) {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li/ul//*[contains (text(), '" + typeName + "')]")).click();
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in block selected address$")
    public void checkThatElementWithNameIsDisplayedInBlockSelectedAddress(String tytleName) {
        $(By.xpath("//div[@id='outage-house']//*[contains(text(), '" + tytleName + "')]")).shouldHave(visible);
    }

    @And("^type to input \"([^\"]*)\" in form add entrance and appartment$")
    public void typeToInputInFormAddEntranceAndAppartment(String text) {
        $(By.xpath("//*[@id=\"outage-house\"]/div[2]/div[4]/input")).sendKeys(text);
    }

    @And("^click button addApartment$")
    public void clickButtonAddApartment() {
        $(By.xpath("//*[@id=\"outage-house\"]/div[2]/div[4]/div[2]")).click();
    }


    @And("^click button with text \"([^\"]*)\" in blockHousesForOffAddressOff$")
    public void clickButtonWithTextInBlockHousesForOffAddressOff(String buttonName) {
        if (buttonName.equals("Квартиры"))
            $(By.xpath("//div[@id='outage-house']//span[contains (text(), '" + buttonName + "')]")).click();
        else {
            $(By.xpath("//div[@id='outage-house']//div[contains (text(), '" + buttonName + "')]")).click();
        }
    }

    @And("^click button accept appartment or entrance$")
    public void clickButtonAcceptAppartmentOrEntrance() {
        formAddAppartmentButtonAcept.click();
    }

    @And("^click to category off in form create off$")
    public void clickToCategoryOffInFormCreateOff() {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li[11]/span[1]")).click();
    }

    @And("^click to first organization with text \"([^\"]*)\"$")
    public void clickToFirstOrganizationWithText(String organizationName) {
        $(By.xpath("//li[.= '" + organizationName + "']")).click();
    }

    @And("^check notification create off is displayed$")
    public void checkNotificationCreateOffIsDisplayed() {
//        $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(matchesText("Отключение № сохранено")).isDisplayed();
       $(By.xpath("//*[@id='message-done']/div[2]/p")).shouldHave(text("Отключение № \" + \"[0-9]\" + \" сохранено")).shouldBe(visible);
    }

    @And("^check pop-up message at field off is displayed$")
    public void checkPopUpMessageAtFieldOffIsDisplayed() {
        $(By.xpath("//*[@id='message-invalid']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Дома для отключения, Вид отключения, Дата отключения, Планируемая дата включения, Тип отключения"));
    }


    @And("^check that list of organization is displayed in form create off$")
    public void checkThatListOfOrganizationIsDisplayedInFormCreateOff() {
        $(By.xpath("html/body/div[2]/div/div/div/ul")).shouldBe(visible);
    }

    @And("^check that list of organization is not displayed in form create off$")
    public void checkThatListOfOrganizationIsNotDisplayedInFormCreateOff() {
        $(By.xpath("html/body/div[2]/div/div/div/ul")).shouldNotBe(visible);
    }

    @And("^check pop-up message at field off number two is displayed$")
    public void checkPopUpMessageAtFieldOffNumberTwoIsDisplayed() {
        $(By.xpath("//*[@id='message-invalid']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Дома для отключения, Дата отключения, Планируемая дата включения, Тип отключения"));
    }

    @And("^check pop-up message at field off number three is displayed$")
    public void checkPopUpMessageAtFieldOffNumberThreeIsDisplayed() {
        $(By.xpath("//*[@id='message-invalid']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Дома для отключения, Дата отключения, Планируемая дата включения"));
    }

    @And("^check pop-up message at field off number four is displayed$")
    public void checkPopUpMessageAtFieldOffNumberFourIsDisplayed() {
        $(By.xpath("//*[@id='message-invalid']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Дата отключения, Планируемая дата включения"));
    }

    @And("^check pop-up message at field off number five is displayed$")
    public void checkPopUpMessageAtFieldOffNumberFiveIsDisplayed() {
        $(By.xpath("//*[@id='message-invalid']/div[2]/p")).shouldHave(text("Не заполнены обязательные поля: Планируемая дата включения"));
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in blockHousesForOffAddressOff$")
    public void checkThatElementWithNameIsDisplayedInBlockHousesForOffAddressOff(String tytleName) {
        $(By.xpath("//div[@id='create-request']//*[contains(text(), '" + tytleName + "')]")).shouldHave(visible);
    }

    @And("^clear organization in blockHousesForOffWorkOff$")
    public void clearOrganizationInBlockHousesForOffWorkOff() {
        $(By.xpath("//div[@id='create-request']//*[contains (text(), 'Ведёт работы')]/..//input")).clear();
    }

    @And("^check that header is \"([^\"]*)\" is displayed$")
    public void checkThatHeaderIsIsDisplayed(String text) {
        $(By.xpath("//div[@id='outage-house']/*[contains (text (), '" + text + "')]")).isDisplayed();
    }

    @And("^click button cancel blockHousesForOffAddressOff$")
    public void clickButtonCancelBlockHousesForOffAddressOff() {
        formHousesForOffButtonClose.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in block selected appartment$")
    public void checkThatElementWithNameIsDisplayedInBlockSelectedAppartment(String text) {
        formAddAppartmentSelectedAppartment.shouldHave(text(text)).shouldHave(visible);
    }

    @And("^click to close form new off$")
    public void clickToCloseFormNewOff() {
        formCreateOffButtonClose.click();
    }

    @And("^click to entrance$")
    public void clickToEntrance() {
        formAddEntranceCheckboxEntrance.click();
    }

    @And("^type to input text \"([^\"]*)\" in typeOffOnFormNewOff$")
    public void typeToInputTextInTypeOffOnFormNewOff(String text) {
        fieldTypeOffTextbox.sendKeys(text);
    }

    @And("^click button close formAddAppartment$")
    public void clickButtonCloseFormAddAppartment() {
        formAddAppartmentButtonClose.click();
    }
}

