package steps;

import com.codeborne.selenide.Condition;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byAttribute;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.ViewAndUpdateRequestPage.*;


public class ViewAndUpdateRequestStepDefinitions {


    @When("^click first line with request$")
    public void clickFirstLineWithRequest() {
        firstLineWithRequest.click();
    }

    @Then("^check that element add the comment is displayed$")
    public void checkThatElementAddTheCommentIsDisplayed() {
        addTheComment.shouldBe(Condition.visible);
    }

    @Then("^check that element show story is displayed$")
    public void checkThatElementShowStoryIsDisplayed() {
        showStory.should(Condition.exist);
    }

    @Then("^check that element next request is displayed$")
    public void checkThatElementNextRequestIsDisplayed() {
        nextRequest.shouldBe(Condition.visible);

    }

    @Then("^check that element prev request is displayed$")
    public void checkThatElementPrevRequestIsDisplayed() {
        prevRequest.shouldBe(Condition.visible);
    }

    @Then("^check that element title of request is displayed$")
    public void checkThatElementTitleOfRequestIsDisplayed() {
        titleOfRequest.shouldBe(Condition.visible);
    }

    @Then("^click collapse and expand request$")
    public void clickCollapseAndExpandRequestIsDisplayed() {
        collapseAndExpandRequest.click();
    }

    //  @Then("^check that element show performance story is displayed$")
    //  public void checkThatElementShowPerformanceStoryIsDisplayed()  {
    //  showPerformanceStory.click();
    // }

    @Then("^check that button with text \"([^\"]*)\" is displayed$")
    public void checkThatButtonWithTextIsDisplayed(String buttonText) {
        $(byText(buttonText)).shouldBe(visible);

    }

    @Then("^check that button with text \"([^\"]*)\" is disabled$")
    public void checkThatButtonWithTextIsDisabled(String buttonText) {
        $(byText(buttonText)).shouldBe(exist);
    }

    @Then("^check that button save is displayed$")
    public void checkThatButtonSaveIsDisplayed() {
        buttonSave.shouldBe(Condition.visible);
    }

    @And("^check that button save in reject is displayed$")
    public void checkThatButtonSaveInRejectIsDisplayed() {
        buttonSaveInReject.shouldBe(Condition.visible);
    }


    @And("^check that button save in execution is displayed$")
    public void checkThatButtonSaveInExecutionIsDisplayed() {
        buttonSaveInExecution.shouldBe(visible);
    }

    @And("^check that button save in closed is displayed$")
    public void checkThatButtonSaveInClosedIsDisplayed() {
        buttonSaveInClosed.shouldBe(visible);
    }

    @And("^check that button accept request is displayed$")
    public void checkThatButtonAcceptRequestIsDisplayed() {
        buttonAcceptRequest.shouldBe(visible);
    }

    @And("^click on executor requestExecutor$")
    public void clickOnExecutorRequestExecutor() {
        executorText.click();
    }

    @And("^choose executor \"([^\"]*)\" in requestExecutor$")
    public void chooseExecutorInRequestExecutor(String executer) {
        inputExecutor.sendKeys(executer);
    }


    @And("^click on \"([^\"]*)\" executor$")
    public void clickOnExecutor(String executor) {
        $(byAttribute("title", executor)).click();
    }

    @And("^input text \"([^\"]*)\" in description in requestDescription$")
    public void inputTextInDescriptionInRequestDescription(String description) {
        fieldDescription.clear();
        fieldDescription.sendKeys(description);
    }

    @And("^click on priority in requestPriority$")
    public void clickOnPriorityInRequestPriority() {
        fieldPriority.click();
    }

    @And("^click priorityEmergency in requestPriority$")
    public void clickPriorityEmergencyInRequestPriority() {
        priorityEmergensy.click();
    }

    @And("^clear address in requestAddress$")
    public void clearAddressInRequestAddress() {
        fieldAddress.clear();
    }

    @And("^input \"([^\"]*)\" to requestAddress$")
    public void inputToRequestAddress(String street) {
        fieldAddress.sendKeys(street);
    }


    @And("^input text \"([^\"]*)\" in commentAddress in requestCommentAddress$")
    public void inputTextInCommentAddressInRequestCommentAddress(String commentAddress) {
        fieldCommentOnTheAddress.clear();
        fieldCommentOnTheAddress.sendKeys(commentAddress);
    }

    @And("^input text \"([^\"]*)\" in enterence in requestEnterence$")
    public void inputTextInEnterenceInRequestEnterence(String enterence) {
        fieldEntrance.clear();
        fieldEntrance.sendKeys(enterence);
    }

    @And("^input text \"([^\"]*)\" in floor in requestFloor$")
    public void inputTextInFloorInRequestCommentFloor(String floor) {
        fieldFloor.clear();
        fieldFloor.sendKeys(floor);
    }

    @And("^input text \"([^\"]*)\" in flat in requestFlat$")
    public void inputTextInFlatInRequestFlat(String flat) {
        fieldFlat.clear();
        fieldFlat.sendKeys(flat);
    }

    @And("^input text \"([^\"]*)\" in intercom in requestIntercom$")
    public void inputTextInIntercomInRequestIntercom(String intercom) {
        fieldIntercom.clear();
        fieldIntercom.sendKeys(intercom);
    }

    @And("^input text \"([^\"]*)\" in additionalPhone in requestAdditionalPhone$")
    public void inputTextInAdditionalPhoneInRequestAdditionalPhone(String additionalPhone) {
        fieldAdditionalPhone.clear();
        fieldAdditionalPhone.sendKeys(additionalPhone);
    }

    @And("^click button saveRequest$")
    public void clickButtonSaveRequest() {
        buttonSave.click();
    }

    @And("^check that executor is \"([^\"]*)\"$")
    public void checkThatExecutorIs(String executor) {
        $(byAttribute("title", executor)).shouldBe(visible);
    }

    @And("^check that description is \"([^\"]*)\"$")
    public void checkThatDescriptionIs(String description) {
        fieldDescription.shouldHave(text(description));
    }

    @And("^check that priority is \"([^\"]*)\"$")
    public void checkThatPriorityIs(String priority) {
        fieldPriority.shouldHave(text(priority));
    }

    @And("^check that commentAddress is \"([^\"]*)\"$")
    public void checkThatCommentAddressIs(String commentAddress) {
        fieldCommentOnTheAddress.shouldHave(text(commentAddress));
    }

    @And("^check that enterence is \"([^\"]*)\"$")
    public void checkThatEnterenceIs(String enterence) {
        fieldEntrance.shouldHave(text(enterence));
    }

    @And("^check that floor is \"([^\"]*)\"$")
    public void checkThatFloorIs(String floor) {
        fieldFloor.shouldHave(text(floor));
    }

    @And("^check that flat is \"([^\"]*)\"$")
    public void checkThatFlatIs(String flat) {
        fieldFlat.shouldHave(text(flat));
    }

    @And("^check that intercom is \"([^\"]*)\"$")
    public void checkThatIntercomIs(String intercom) {
        fieldIntercom.shouldHave(text(intercom));
    }

    @And("^check that additionalPhone is \"([^\"]*)\"$")
    public void checkThatAdditionalPhoneIs(String additionalPhone) {
        fieldAdditionalPhone.shouldHave(text(additionalPhone));
    }

    @And("^check that number request is displayed$")
    public void checkThatNumberRequestIsDisplayed() {
        requestNumber.shouldHave(text("Заявка №"));
    }

    @And("^scroll to additionalPhone$")
    public Void scrollToAdditionalPhone() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldAdditionalPhone);
    }

    @And("^scroll to adress$")
    public Void scrollToAdress() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldAddress);
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in request$")
    public void checkThatElementWithNameIsDisplayedInRequest(String text) {
        $(By.xpath("//div[@class='request-view']//*[contains(text(),'" + text + "')]"))
                .shouldBe(visible
                .because("Элемент с текстом: "+text+" не отображается на экране в карточке заявки"));
    }

    @And("^check that button with text \"([^\"]*)\" is visible in request$")
    public void checkThatButtonWithTextIsDisabledInRequest(String buttonName) {
        $(By.xpath("//div[@class='card']//button[.='" + buttonName + "']")).shouldBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is disable in request$")
    public void checkThatButtonWithTextIsDisableInRequest(String buttonName) {
        $(By.xpath("//div[@class='footer']/button[.='" + buttonName + "']")).shouldNotBe(enabled);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in request$")
    public void checkThatElementWithNameIsNotDisplayedInRequest(String text) {
        $(By.xpath("//div[@class='card']//*[.='" + text + "']")).shouldNotBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is not visible in request$")
    public void checkThatButtonWithTextIsNotVisibleInRequest(String buttonName) {
        $(By.xpath("//div[@class='footer']/button[.='" + buttonName + "']")).shouldNotBe(visible);
    }

    @And("^scroll to category$")
    public Void scrollToCategory() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", typeRequestText);
    }

    @And("^scroll to addFile$")
    public Void scrollToAddFile() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", addFile);
    }

    public Void scrollToAddComment() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", addTheComment);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in history table$")
    public void checkThatElementWithNameIsDisplayedInHistoryTable(String text) {
        $(By.xpath("//table[@id='req-history-table']//*[.='" + text + "']")).waitUntil(visible, 10000);
        $(By.xpath("//table[@id='req-history-table']//*[.='" + text + "']")).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in history table$")
    public void checkThatElementWithNameIsNotDisplayedInHistoryTable(String text) {
        $(By.xpath("//table[@id='req-history-table']//*[.='" + text + "']")).waitUntil(not(visible), 10000);
        $(By.xpath("//table[@id='req-history-table']//*[.='" + text + "']")).shouldNotBe(visible);
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in cardRequest$")
    public void checkThatFieldIsInCardRequest(String fieldName, String value) {
        if (fieldName.equals("Описание") || fieldName.equals("Комментарий к адресу"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div/textarea")).shouldHave(text(value));
        else if (fieldName.equals("Тип дефекта") || fieldName.equals("Статус") || fieldName.equals("Желаемое время") || fieldName.equals("Основной телефон") || fieldName.equals("Тип заявки (категория)")
                || fieldName.equals("ОДС") || fieldName.equals("Принял заявку") || fieldName.equals("Дата составления"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).shouldHave(text(value));
        else if (fieldName.equals("Приоритет") || fieldName.equals("Источник") || fieldName.equals("Платность") || fieldName.equals("Причина отмены") || fieldName.equals("Причина отклонения") || fieldName.equals("Комментарии"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//div")).shouldHave(text(value));
        else if (fieldName.equals("Статус оплаты"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//div/div/div/div")).shouldHave(text(value));
        else
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//input")).shouldHave(value(value));
    }

    @And("^check that element prev request is disable$")
    public void checkThatElementPrevRequestIsDisable() {
        prevRequest.shouldBe(disabled);
    }

    @And("^click element next request$")
    public void clickElementNextRequest() {
        nextRequest.click();
    }

    @And("^check that element prev request is enable$")
    public void checkThatElementPrevRequestIsEnable() {
        prevRequest.shouldBe(enabled);
    }

    @And("^click element prev request$")
    public void clickElementPrevRequest() {
        prevRequest.click();
    }

    @And("^click button with text \"([^\"]*)\" in form request card$")
    public void clickButtonWithTextInFormRequestCard(String buttonName) {
        $(By.xpath("//div[@class='request-view']//*[contains(text(),'" + buttonName + "')]")).waitUntil(visible, 10000);
        $(By.xpath("//div[@class='request-view']//*[contains(text(),'" + buttonName + "')]")).click();
    }

    @And("^click on hyperlink by consultation$")
    public void clickOnHyperlinkByFirstConsultation() {
        $(By.xpath("//*[@id='req-history-table']/tbody/tr[1]/td[1]/a")).click();
    }

    @And("^type to input \"([^\"]*)\" in field \"([^\"]*)\" in form request card$")
    public void typeToInputInFieldInFormRequestCard(String value, String fieldName) {
        if (fieldName.equals("Описание") || fieldName.equals("Комментарий к адресу") || fieldName.equals("Оставить комментарий"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div/textarea")).sendKeys(value);
        else
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//input")).sendKeys(value);
    }

    @And("^click first executor in fieldExecutor$")
    public void clickFirstExecutorInFieldExecutor() {
        $(By.xpath("/html/body/div[2]/div/div/div/ul/li")).click();
    }

    @And("^type to input \"([^\"]*)\" in form close of request$")
    public void typeToInputInFieldInFormCloseOfRequest(String value) {
        $(By.xpath("//*[@id='feedback']/div[2]/div[2]/div[2]/input")).sendKeys(value);
    }

    @And("^click button closeRequest in form close request$")
    public void clickButtonCloseRequestInFormCloseRequest() {
        buttonCloseRequest.click();
    }


    @And("^click to field with name \"([^\"]*)\"$")
    public void clickToFieldWithText(String fieldName) {
        if (fieldName.equals("Платность") || fieldName.equals("Приоритет") || fieldName.equals("Причина отмены") || fieldName.equals("Причина отклонения") || fieldName.equals("Источник"))
            $(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td[2]/div/div/div")).click();
        else if (fieldName.equals("Оплата картой"))
            $(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td[2]//span")).click();
        else
            $(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td[2]/div")).click();
    }


    @And("^click first reason of cancel with text \"([^\"]*)\"$")
    public void clickFirstReasonOfCancelWithText(String reasonOfCncelName) {
        $(By.xpath("//li[.= '" + reasonOfCncelName + "']")).click();
    }

    @And("^click first reason of reject with text \"([^\"]*)\"$")
    public void clickFirstReasonOfRejectWithText(String reasonOfRejectName) {
        $(By.xpath("//li[.= '" + reasonOfRejectName + "']")).click();
    }

    @And("^click button cancel in form close request$")
    public void clickButtonCancelInFormCloseRequest() {
        buttonCancelRequest.click();
    }

    @And("^check that button cancel is displayed$")
    public void checkThatButtonCancelIsDisplayed() {
        buttonCancelRequest.isDisplayed();

    }

    @And("^click button with text \"([^\"]*)\" in form close request$")
    public void clickButtonWithTextInFormCloseRequest(String buttonName) {
        $(By.xpath("//div[@class='feedback-panel']//*[contains(text(),'" + buttonName + "')]")).click();
    }


    @And("^check that field \"([^\"]*)\" is not displayed in cardRequest$")
    public void checkThatFieldIsNotDisplayedInCardRequest(String fieldName) {
        $(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td")).shouldNotBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is disabled in form request card$")
    public void checkThatButtonWithTextIsDisabledInFormRequestCard(String buttonName) {
        $(By.xpath("//div[@class='request-view']//button[contains (text (), '" + buttonName + "')]")).shouldBe(disabled);
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in form close request$")
    public void checkThatFieldIsInFormCloseRequest(String fieldName, String value) {
        $(By.xpath("//div[@class='feedback-content']//span[contains(text(), '" + fieldName + "')]/ancestor::div/div[2]/div/div/div/ul//input")).shouldHave(text(value));
    }

    @And("^clear field with name \"([^\"]*)\" in card request$")
    public void clearFieldWithNameInCardRequest(String fieldName) {
        if (fieldName.equals("Описание") || fieldName.equals("Комментарий к адресу"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div/textarea")).clear();
        else if (fieldName.equals("Тип дефекта") || fieldName.equals("Статус") || fieldName.equals("Желаемое время") || fieldName.equals("Основной телефон") || fieldName.equals("Тип заявки (категория)")
                || fieldName.equals("ОДС") || fieldName.equals("Принял заявку") || fieldName.equals("Дата составления"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).clear();
        else if (fieldName.equals("Приоритет") || fieldName.equals("Источник") || fieldName.equals("Платность") || fieldName.equals("Причина отмены") || fieldName.equals("Причина отклонения"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//div")).clear();
        else
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//input")).clear();
    }

    @And("^click first priority with text \"([^\"]*)\"$")
    public void clickFirstPriorityWithText(String priorityName) {
        String xpath = "/li[@title='" + priorityName + "']";
        $(By.xpath(xpath)).click();
    }


    @And("^click to first payable with text \"([^\"]*)\"$")
    public void clickToFirstPayableWithText(String payableName) {
        $(By.xpath("/html/body/div[3]/div/div/div/ul/li[.= '" + payableName + "']")).click();
    }


    @And("^click to first status of pay with text \"([^\"]*)\"$")
    public void clickToFirstStatusOfPayWithText(String statuseOfPayName) {
        String xpath = "//li[@title='" + statuseOfPayName + "']";
        $(By.xpath(xpath)).click();
    }

    @And("^check that element with name \"([^\"]*)\" is disabled in request$")
    public void checkThatElementWithNameIsDisabledInRequest(String fieldName) {
        if (fieldName.equals("Описание") || fieldName.equals("Комментарий к адресу"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div/textarea")).shouldBe(disabled);
        else if (fieldName.equals("Тип дефекта") || fieldName.equals("Статус") || fieldName.equals("Желаемое время") || fieldName.equals("Основной телефон") || fieldName.equals("Тип заявки (категория)")
                || fieldName.equals("ОДС") || fieldName.equals("Принял заявку") || fieldName.equals("Дата составления"))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).shouldBe(disabled);
        else if (fieldName.equals("Статус оплаты") || (fieldName.equals("Приоритет") || fieldName.equals("Источник") || fieldName.equals("Платность") || fieldName.equals("Причина отмены") || fieldName.equals("Причина отклонения") || fieldName.equals("Комментарии")))
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div")).shouldBe(disabled);
        else
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//input")).shouldBe(disabled);
    }


    @And("^check that element with name \"([^\"]*)\" is enabled in request$")
    public void checkThatElementWithNameIsEnabledInRequest(String fieldName) {
        $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//div")).shouldBe(enabled);
    }

    @And("^check that button with text \"([^\"]*)\" is enabled in request$")
    public void checkThatButtonWithTextIsEnabledInRequest(String buttonName) {
        $(By.xpath("//div[@class='footer']/button[.='" + buttonName + "']")).shouldBe(enabled);
    }

    @And("^check that element with text \"([^\"]*)\" is displayed in block add to comment$")
    public void checkThatElementWithTextIsDisplayedInBlockAddToComment(String value) {
        $(By.xpath("//div[@class='card']//*[contains(text(),'" + value + "')]/..//td[2]/div/div")).isDisplayed();

    }

    @And("^check that field \"([^\"]*)\" is systemDate in cardRequest$")
    public void checkThatFieldIsSystemDateInCardRequest(String fieldName) {
        Calendar c = new GregorianCalendar();
        SimpleDateFormat format1 = new SimpleDateFormat("dd.MM.yyyy HH:mm"); //придаем нужный формат дате
        String str = format1.format(c.getTime());
        $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]/div")).shouldHave(text(str));
    }

    @And("^check that field \"([^\"]*)\" is checked in cardRequest$")
    public void checkThatFieldIsCheckedInCardRequest(String fieldName) {
        $(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td[2]//span")).isSelected();
    }

    @And("^check that field \"([^\"]*)\" is not checked in cardRequest$")
    public void checkThatFieldIsNotCheckedInCardRequest(String fieldName) {
        Assert.assertFalse($(By.xpath("//div[@class='request-view']//*[contains (text (), '" + fieldName + "')]/..//td[2]//span")).isSelected());
    }


    @And("^copy date close of request from history of request$")
    public void copyDateCloseOfRequestFromHistoryOfRequest() {
        //tableStoryOfrequest.waitUntil(exist, 10000);
        String date = storyOfRequestDateClosedOfRequest.last().getText();
        StringSelection stringSelection = new StringSelection(date);
        Clipboard clpbrd = Toolkit.getDefaultToolkit().getSystemClipboard();
        clpbrd.setContents(stringSelection, null);

    }

    @And("^check that element grey pictogramm is not displayed in column number of consultation$")
    public void checkThatElementGreyPictogrammIsNotDisplayedInColumnNumberOfConsultation() {
        tableStoryOfrequestPictogramm.shouldNotBe(visible);
    }

    @And("^check that element red pictogramm is not displayed in column number of consultation$")
    public void checkThatElementRedPictogrammIsNotDisplayedInColumnNumberOfConsultation() {
        tableStoryOfrequestPictogramm.shouldNotBe(visible);
    }


    @And("^check that element red pictogramm is displayed in column number of consultation$")
    public void checkThatElementRedPictogrammIsDisplayedInColumnNumberOfConsultation()   {
        tableStoryOfrequestPictogramm.shouldHave(attribute("class", "push")).isDisplayed();
    }

    @And("^check that element grey pictogramm is displayed in column number of consultation$")
    public void checkThatElementGreyPictogrammIsDisplayedInColumnNumberOfConsultation()   {
        tableStoryOfrequestPictogramm.waitUntil(visible, 20000);
        tableStoryOfrequestPictogramm.shouldHave(attribute("class", "push-solved")).isDisplayed();
    }

    @Then("^check that element with text is displayed in request$")
    public void checkThatElementWithTextIsDisplayedInRequest(DataTable dt) throws Throwable {
        List<String> list = dt.asList(String.class);
        for(Object element :list)
        checkThatElementWithNameIsDisplayedInRequest(element.toString());
    }

//    @Then("^check that element with text \"([^\"]*)\" is displayed in request$")
//    public void checkThatElementWithTextIsDisplayedInRequest(String elements) throws Throwable {
//        String[] myArray = elements.split(",");
//        for (String str : myArray) {
//            checkThatElementWithNameIsDisplayedInRequest(str);
//        }
//    }
}





