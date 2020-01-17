package steps;

import com.codeborne.selenide.Condition;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Rule;
import org.junit.rules.ErrorCollector;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byAttribute;
import static com.codeborne.selenide.Selenide.$;
//import static helpers.CSVReaderUtils.parseCSV;
import static helpers.CSVReaderUtils.parseCSV;
import static helpers.LoggerCommands.loggerWarn;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.NewRequestPage.*;
import static pages.NewRequestPage.addressList;
import static pages.NewRequestPage.buttonEnterSearchRequest;
import static pages.NewRequestPage.closeFormNewRequest;
import static pages.NewRequestPage.fieldAdditionalPhone;
import static pages.NewRequestPage.fieldAddress;
import static pages.NewRequestPage.fieldAnotherIntercom;
import static pages.NewRequestPage.fieldCommentAddress;
import static pages.NewRequestPage.fieldContactPerson;
import static pages.NewRequestPage.fieldDescription;
import static pages.NewRequestPage.fieldEntrance;
import static pages.NewRequestPage.fieldFlat;
import static pages.NewRequestPage.fieldFloor;
import static pages.NewRequestPage.fieldMainPhone;
import static pages.NewRequestPage.fieldPriority;
import static pages.NewRequestPage.fieldSource;
import static pages.NewRequestPage.fieldTimeBy;
import static pages.NewRequestPage.fieldTimeWith;
import static pages.NewRequestPage.fieldTypeRequest;
import static pages.NewRequestPage.findRequest;
import static pages.NewRequestPage.firstAddressInAK;
import static pages.NewRequestPage.labelAddress;
import static pages.NewRequestPage.labelApartment;
import static pages.NewRequestPage.labelCommentToAddress;
import static pages.NewRequestPage.labelContactPerson;
import static pages.NewRequestPage.labelDescriptionOfTheProblem;
import static pages.NewRequestPage.labelDesiredTime;
import static pages.NewRequestPage.labelDomophone;
import static pages.NewRequestPage.labelEntrance;
import static pages.NewRequestPage.labelFloor;
import static pages.NewRequestPage.labelMainPhone;
import static pages.NewRequestPage.labelSource;
import static pages.NewRequestPage.labelTypeRequest;
import static pages.NewRequestPage.offInAdditionalOff;
import static pages.NewRequestPage.pictureFreePayRequest;
import static pages.NewRequestPage.picturePayRequest;
import static pages.NewRequestPage.saveRequest;
import static pages.NewRequestPage.searchTypeRequest;
import static pages.NewRequestPage.sourcePhone;
import static pages.NewRequestPage.subtypeRequestFreeEmergency;
import static pages.NewRequestPage.subtypeRequestFreeNormal;
import static pages.NewRequestPage.subtypeRequestFreePayEmergency;
import static pages.NewRequestPage.subtypeRequestFreePayNormal;
import static pages.NewRequestPage.subtypeRequestPayNormal;
import static pages.NewRequestPage.typeAccomplishment;
import static pages.NewRequestPage.typeHeating;
import static pages.NewRequestPage.typeVentilation;
import static pages.NewRequestPage.warningNewRequest;


public class NewRequestStepDefinitions {
    private static final String CLASS_NAME = NewRequestStepDefinitions.class.getName();

    @Rule
    public ErrorCollector collector = new ErrorCollector();
    private DispCentrStepDefinitions dispCentrSteps = new DispCentrStepDefinitions();
    private GeneralStepDefinitions generalSteps = new GeneralStepDefinitions();
    private AdvancedFilterStepDefinitions advancedFiltrSteps = new AdvancedFilterStepDefinitions();


    @Then("^check that element find request is displayed$")
    public void checkThatElementFindRequestIsDisplayed() {
        findRequest.shouldBe(Condition.visible);
    }


    @Then("^check that element warning new request is displayed$")
    public void checkThatElementWarningNewRequestIsDisplayed() {
        warningNewRequest.shouldBe(Condition.visible);
    }

    @When("^click to close form new request$")
    public void clickToCloseFormNewRequest() {
        closeFormNewRequest.click();
    }


   /* @And("^check that element required field type request is displayed$")
    public void checkThatElementRequiredFieldTypeRequestIsDisplayed()  {
        fieldTypeRequestMessage.shouldBe(Condition.visible);
    }

    @And("^check that element required field priority request is displayed$")
    public void checkThatElementRequiredFieldPriorityRequestIsDisplayed()  {
        fieldPriorityMessage.shouldBe(Condition.visible);
    }

    @And("^check that element required field address is displayed$")
    public void checkThatElementRequiredFieldAddressIsDisplayed()  {
        fieldAddressMessage.shouldBe(Condition.visible);
    }

    @And("^check that element required field main phone is displayed$")
    public void checkThatElementRequiredFieldMainPhoneIsDisplayed()  {
        fieldMainPhoneMessage.shouldBe(Condition.visible);
    }

    @And("^check that element required field source is displayed$")
    public void checkThatElementRequiredFieldSourceIsDisplayed()  {
        fieldSourceMessage.shouldBe(Condition.visible);
    } */


    @And("^click button save$")
    public void clickButtonSave() {
        saveRequest.click();
    }


    @And("^click main phone$")
    public void clickMainPhone() {
        fieldMainPhone.click();
    }

    @And("^type to input with name main phone text \"([^\"]*)\"$")
    public void typeToInputWithNameMainPhoneText(String phone) {
        fieldMainPhone.sendKeys(phone);
    }

    @And("^click address$")
    public void clickAddress() {
        fieldAddress.click();
    }

    @And("^type to input with name address text \"([^\"]*)\"$")
    public void typeToInputWithNameAddressText(String street) {
        fieldAddress.clear();
        fieldAddress.sendKeys(street);
    }


    @And("^check that element address list is displayed$")
    public void checkThatElementAddressListIsDisplayed() {
        addressList.shouldBe(visible);
    }

    @And("^click empty in form new request$")
    public void clickEmptyInFormNewRequest() {
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
        labelFloor.click();
    }

    @And("^click field source$")
    public void clickFieldSource() {
        fieldSource.click();
    }

    @And("^click source$")
    public void clickSource() {
        sourcePhone.click();
    }


    @And("^click field type request$")
    public void clickFieldTypeRequest() {
        fieldTypeRequest.click();
    }

    @And("^click type accomplishment$")
    public void clickTypeAccomplishment() {
        waiter.waitUntil(not(visible), 10000);
        typeAccomplishment.click();
    }

    @And("^click subtype normal free request$")
    public void clickSubtypeNormalFreeRequest() {
        waiter.waitUntil(not(visible), 10000);
        subtypeRequestFreeNormal.click();
    }

    @And("^click subtype normal pay request$")
    public void clickSubtypeNormalPayRequest() {
        waiter.waitUntil(not(visible), 10000);
        subtypeRequestPayNormal.click();
    }

    @And("^check that element picture pay request$")
    public void checkThatElementPicturePayRequest() {
        picturePayRequest.shouldBe(visible);
    }

    @And("^click type ventilation$")
    public void clickTypeVentilation() {
        typeVentilation.click();
    }

    @And("^click subtype normal free/pay request$")
    public void clickSubtypeNormalFreePayRequest() {
        waiter.waitUntil(not(visible), 10000);
        subtypeRequestFreePayNormal.click();
    }

    @And("^check that element picture free/pay request$")
    public void checkThatElementPictureFreePayRequest() {
        pictureFreePayRequest.shouldBe(visible);
    }

    @And("^click subtype emergency free request$")
    public void clickSubtypeEmergencyFreeRequest() {
        waiter.waitUntil(not(visible), 10000);
        subtypeRequestFreeEmergency.click();
    }

    @And("^check that element normal priority is disabled$")
    public void checkThatElementNormalPriorityIsDisabled() {
        fieldPriority.shouldBe(exist).shouldHave(text("Обычная"));
    }

    @And("^check that element emergency priority is disabled$")
    public void checkThatElementEmergencyPriorityIsDisabled() {
        fieldPriority.shouldBe(exist).shouldHave(text("Аварийная"));
    }

    @And("^click type heating$")
    public void clickTypeHeating() {
        waiter.waitUntil(not(visible), 10000);
        typeHeating.click();
    }

    @And("^click subtype emergency free/pay request$")
    public void clickSubtypeEmergencyFreePayRequest() {
        waiter.waitUntil(not(visible), 10000);
        subtypeRequestFreePayEmergency.click();
    }


    @And("^check that element address list is not displayed$")
    public void checkThatElementAddressListIsNotDisplayed() {
        addressList.shouldNot(visible);
    }


    @And("^check that element address is displayed$")
    public void checkThatElementAddressIsDisplayed() {
        labelAddress.shouldBe(visible);
    }

    @And("^check that element comment to address is displayed$")
    public void checkThatElementCommentToAddressIsDisplayed() {
        labelCommentToAddress.shouldBe(visible);
    }

    @And("^check that element entrance is displayed$")
    public void checkThatElementEntranceIsDisplayed() {
        labelEntrance.shouldBe(visible);
    }

    @And("^check that element floor is displayed$")
    public void checkThatElementFloorIsDisplayed() {
        labelFloor.shouldBe(visible);
    }

    @And("^check that element apartment is displayed$")
    public void checkThatElementApartmentIsDisplayed() {
        labelApartment.shouldBe(visible);
    }

    @And("^check that element domophone is displayed$")
    public void checkThatElementDomophoneIsDisplayed() {
        labelDomophone.shouldBe(visible);
    }

    @And("^check that element main phone is displayed$")
    public void checkThatElementMainPhoneIsDisplayed() {
        labelMainPhone.shouldBe(visible);
    }

    @And("^check that element contact person is displayed$")
    public void checkThatElementContactPersonIsDisplayed() {
        labelContactPerson.shouldBe(visible);
    }

    @And("^check that element desired time  is displayed$")
    public void checkThatElementDesiredTimeIsDisplayed() {
        labelDesiredTime.shouldBe(visible);
    }

    @And("^check that element source is displayed$")
    public void checkThatElementSourceIsDisplayed() {
        labelSource.shouldBe(visible);
    }

    @And("^check that element type request is displayed$")
    public void checkThatElementTypeRequestIsDisplayed() {
        labelTypeRequest.shouldBe(visible);
    }

    @And("^check that element description of the problems is displayed$")
    public void checkThatElementDescriptionOfTheProblemsIsDisplayed() {
        labelDescriptionOfTheProblem.shouldBe(visible);
    }

    @And("^check that element save request is disabled$")
    public void checkThatElementSaveRequestIsDisabled() {
        saveRequest.shouldBe(disabled);
    }

    @And("^click on the first address$")
    public void clickOnTheFirstAddress() {
        waiter.waitUntil(not(visible), 10000);
        firstAddressInAK.click();
    }

    @And("^input text \"([^\"]*)\" to description$")
    public void inputTextToDescription(String description) {
        fieldDescription.sendKeys(description);
    }

    @And("^input text \"([^\"]*)\" to addressComment$")
    public void inputTextToAddressComment(String addressComment) {
        fieldCommentAddress.sendKeys(addressComment);
    }

    @And("^input text \"([^\"]*)\" to entrance$")
    public void inputTextToEnterence(String entrance) {
        fieldEntrance.sendKeys(entrance);
    }

    @And("^input text \"([^\"]*)\" to floor$")
    public void inputTextToFloor(String floor) {
        fieldFloor.sendKeys(floor);
    }

    @And("^input text \"([^\"]*)\" to flat$")
    public void inputTextToFlat(String flat) {
        fieldFlat.sendKeys(flat);
    }

    @And("^input text \"([^\"]*)\" to aditionalPhone$")
    public void inputTextToAditionalPhone(String aditionalPhone) {
        fieldAdditionalPhone.sendKeys(aditionalPhone);
    }

    @And("^input text \"([^\"]*)\" to fio$")
    public void inputTextToFio(String fio) {
        fieldContactPerson.sendKeys(fio);
    }

    @And("^input text \"([^\"]*)\" to intercom$")
    public void inputTextToIntercom(String intercom) {
        fieldAnotherIntercom.sendKeys(intercom);
    }

    @And("^check notification$")
    public void checkNotification() {
        $(byAttribute("class", "closeable-timed-notification")).shouldHave(text("Была создана заявка"));
    }

    @And("^input text \"([^\"]*)\" to searchTypeRequest$")
    public void inputTextToTypeRequest(String textSearchTypeRequest) {
        searchTypeRequest.sendKeys(textSearchTypeRequest);
    }

    @And("^click search Type Request$")
    public void clickSearchTypeRequest() {
        searchTypeRequest.click();
    }

    @And("^check that page is \"([^\"]*)\" in form newRequest$")
    public void checkThatPageIsInFormNewRequest(String text) {
        $(By.xpath("//div[@id='new-request']//*[.='" + text + "']")).shouldBe(visible);
    }

    @And("^check that element source is not displayed$")
    public void checkThatElementSourceIsNotDisplayed() {
        labelSource.shouldNotBe(visible);
    }

    @And("^type to input text \"([^\"]*)\" in searchField in form new request$")
    public void typeToInputTextInSearchFieldInFormNewRequest(String requestNumber) {
        searchTypeRequest.sendKeys(requestNumber);
    }

    @And("^click button enter find request$")
    public void clickButtonEnterFindRequest() {
        buttonEnterSearchRequest.click();
    }

    @And("^click button with text \"([^\"]*)\" in form new request$")
    public void clickButtonWithTextInFormNewRequest(String buttonText) {
        $(By.xpath("//div[@id='new-request']//*[contains(text(),'" + buttonText + "')]")).click();
    }

    @And("^click to open modal window off$")
    public void clickToOpenModalWindowOff() {
        offInAdditionalOff.click();
    }

    @And("^check that element with name \"([^\"]*)\" is visible in block additional$")
    public void checkThatElementWithNameIsVisibleInBlockAdditional(String text) {
        $(By.xpath("//div[@class='additional']//*[contains(text(), '" + text + "')]")).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not visible in block additional$")
    public void checkThatElementWithNameIsNotVisibleInBlockAdditional(String text) {
        $(By.xpath("//div[@class='additional']//*[contains(text(), '" + text + "')]")).shouldNotBe(visible);
    }


    @And("^clear address in form new request$")
    public void clearAddressInFormNewRequest() {
        fieldAddress.sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
    }

    @And("^check that element with name \"([^\"]*)\" is visible on block additional$")
    public void checkThatElementWithNameIsVisibleOnBlockAdditional(String text) {
        $(By.xpath("//div[@class='additional']")).shouldHave(text(text)).shouldBe(visible);
    }

    @And("^clear entrance in newForm$")
    public void clearEntranceInNewForm() {
        fieldEntrance.sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
    }


    @And("^clear appartment in newForm$")
    public void clearAppartmentInNewForm() {
        fieldFlat.sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
    }

    @And("^click first type of request in formNewRequestTypeOfRequest$")
    public void clickFirstTypeOfRequestInFormNewRequestTypeOfRequest() {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li/ul/li")).click();
    }

    @And("^clear phone in newForm$")
    public void clearPhoneInNewForm() {
        fieldMainPhone.sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
    }

    @And("^clear source in newForm$")
    public void clearSourceInNewForm() {
        fieldSource.clear();
    }

    @And("^type to input \"([^\"]*)\" in request deffect in form newRequest$")
    public void typeToInputInRequestDeffectInFormNewRequest(String textSearchTypeRequest) {
        searchTypeRequest.sendKeys(textSearchTypeRequest);
    }

    @And("^click first type of request with text \"([^\"]*)\"$")
    public void clickFirstTypeOfRequestWithText(String typeRequestName) {
        $(By.xpath("//li[.= '" + typeRequestName + "']")).click();
    }

    @And("^click first address with text \"([^\"]*)\"$")
    public void clickFirstAddressWithText(String addressName) {
        $(By.xpath("//li//div[.= '" + addressName + "']")).waitUntil(visible, 10000).click();
    }

    @And("^click first source with text \"([^\"]*)\"$")
    public void clickFirstSourceWithText(String sourceName) {
        $(By.xpath("//li[.= '" + sourceName + "']")).click();
    }

    @And("^click to field source$")
    public void clickToFieldSource() {
        fieldSource.click();
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in form new request$")
    public void checkThatFieldIsInFormNewRequest(String fieldName, String value) {
        if (fieldName.equals("Адрес"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + fieldName + "')]/..//div/input")).shouldHave(text(value));
        else if (fieldName.equals("Тип заявки") || fieldName.equals("Домофон (код)"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + fieldName + "')]/..//span")).shouldHave(text(value));
        else if (fieldName.equals("Описание проблемы"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + fieldName + "')]/..//div/textarea")).shouldHave(text(value));
        else {
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + fieldName + "')]/..//span/input")).shouldHave(text(value));
        }
    }

    @And("^click choose time in field with$")
    public void clickChooseTimeInFieldWith() {
        fieldTimeWith.click();
    }

    @And("^click choose time in field by$")
    public void clickChooseTimeInFieldBy() {
        fieldTimeBy.click();
    }

    @And("^clear field with$")
    public void clearFieldWith() {
        fieldTimeWith.clear();
    }

    @And("^clear field by$")
    public void clearFieldBy() {
        fieldTimeBy.clear();
    }


    @And("^check that field \"([^\"]*)\" is not \"([^\"]*)\" in form newRequest$")
    public void checkThatFieldIsNotInFormNewRequest(String newRequestName, String value) {
        $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "']/..//input")).shouldNotHave(value(value));
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form new request$")
    public void checkThatElementWithNameIsDisplayedInFormNewRequest(String labelName) {
        $(By.xpath("//div[@id='request']//*[contains(text(),'" + labelName + "')]")).shouldBe(visible);
        if (!labelName.equals("Желаемое время")) {
            if (labelName.equals("Тип заявки") || labelName.equals("Приоритет") || labelName.equals("Источник"))
                $(By.xpath("//div[@id='request']//*[contains(text(),'" + labelName + "')]//..//*[@class='ant-select-selection-selected-value']")).shouldBe(enabled);
            else if (labelName.equals("Описание проблемы"))
                $(By.xpath("//div[@id='request']//*[contains(text(),'" + labelName + "')]//..//div[@class='ant-text-area']")).shouldBe(enabled);
            else
                $(By.xpath("//div[@id='request']//*[contains(text(),'" + labelName + "')]//..//input")).shouldBe(visible);
        }
    }

    @And("^check that element with name \"([^\"]*)\" is checrbox in form new request$")
    public void checkThatElementWithNameIsChecrboxInFormNewRequest(String checrboxName) {
        $(By.xpath("//div[@id='request']//*[contains(text(),'" + checrboxName + "')]//..//input")).shouldBe(enabled);
    }


    @And("^check address autocomplit$")
    public void checkAddressAutocomplit() throws IOException {
        List<String[]> adresses = parseCSV(System.getProperty("user.dir") + "\\src\\main\\resources\\AdressesAutocomplit.csv");
        dispCentrSteps.clickFilter();
        for (String[] address : adresses) {
            generalSteps.pressButtonWithText("Сбросить фильтр");
            advancedFiltrSteps.typeToInputInFiltrInDispCentr(address[0], "Адрес");
            checkThatAddressinAutocomplit(address[0]);
        }
    }

    public void checkThatAddressinAutocomplit(String adress) {
        try {
            $(By.xpath("//li//span[.= '" + adress + "']")).waitUntil(visible, 5000).shouldBe(visible);
        } catch (NoSuchElementException e) {
            collector.addError(new Throwable("There is not address in autocomplit"));
            loggerWarn(CLASS_NAME,"There is not address in autocomplit : "+adress,e);
        }
    }
}












        
