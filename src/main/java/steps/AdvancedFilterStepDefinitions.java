package steps;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.text.ParseException;
import java.util.Date;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.*;
import static helpers.DateHelper.*;
import static helpers.Waiter.getWaiter;
import static org.apache.commons.lang3.time.DateUtils.addDays;
import static org.apache.commons.lang3.time.DateUtils.addHours;
import static pages.AdvancedFilterPage.*;
import static pages.DispatcherCentrPage.*;
import static pages.FiltrDispatcherCentrPage.*;
import static pages.ViewAndUpdateRequestPage.*;
import static utils.ElementsUtils.checkThatTextInElementInElementsCollection;
import static utils.ElementsUtils.returnElementsCollection;


public class AdvancedFilterStepDefinitions {

    private ViewAndUpdateRequestStepDefinitions viewAndUpdateRequestStepDefinitions = new ViewAndUpdateRequestStepDefinitions();
    private GeneralStepDefinitions generalStepDefinition = new GeneralStepDefinitions();

    @And("^click filtr status$")
    public void clickFiltrStatus() {
        comboBoxStatus.click();
    }

    @And("^scroll to back to work$")
    public Void scrollToBackToWork() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", backToWorkFilter);
    }

    @And("^click priority$")
    public void clickPriority() {
        comboBoxPriority.click();
    }


    @And("^press button apply$")
    public void pressButtonApply() {
        buttonApply.click();
    }

    @And("^click empty$")
    public void clickEmpty() {
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
        ODS.click();
    }

    @And("^click priorityNormal$")
    public void clickPriorityNormal() {
        priorityNormal.click();
    }

    @And("^click filtrStatusNew$")
    public void clickFiltrStatusNew() {
        selectNew.click();
    }

    @And("^click filtrStatusWork$")
    public void clickStatusWork() {
        selectWork.click();
    }

    @And("^click filtrStatusExecution$")
    public void clickStatusExecution() {
        selectExecution.click();
    }

    @And("^click filtrStatusClosed$")
    public void clickStatusClosed() {
        selectClosed.click();
    }

    @And("^click filtrStatusReject$")
    public void clickStatusReject() {
        selectReject.click();
    }

    @And("^click filtrStatusCancelled$")
    public void clickStatusCancelled() {
        selectCancelled.click();
    }

    @And("^click priorityEmergency$")
    public void clickPriorityEmergency() {
        priorityEmergency.click();
    }

    @And("^click button reset filter$")
    public void clickButtonResetFilter() {
        buttonResetFilter.click();
    }

    @And("^click payable$")
    public void clickPayable() {
        comboBoxPayable.click();
    }

    @And("^click payableFree$")
    public void clickPayableFree() {
        payableFree.click();
    }

    @And("^click first address in filtrAddress$")
    public void clickFirstAddressInFiltrAddress() {
        waiter.waitUntil(not(visible), 10000);
        firstAddressFiltr.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrAddress$")
    public void typeToInputTextInFiltrAddress(String filtrAddress) {
        addressFiltr.sendKeys(filtrAddress);
    }


    @And("^click reset filtr$")
    public void clickResetFiltr() {
        buttonResetFilter.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrFlat$")
    public void typeToInputTextInFiltrFlat(String filtrFlat) {
        flatFiltr.sendKeys(filtrFlat);
    }

    @And("^type to input text \"([^\"]*)\" in filtrEnterence$")
    public void typeToInputTextInFiltrEnterence(String filtrEnterence) {
        enterenceFiltr.sendKeys(filtrEnterence);
    }

    @And("^type to input text \"([^\"]*)\" in filtrFloor$")
    public void typeToInputTextInFiltrFloor(String filtrFloor) {
        floorFiltr.sendKeys(filtrFloor);
    }

    @And("^type to input text \"([^\"]*)\" in filtrPhone$")
    public void typeToInputTextInFiltrPhone(String filtrPhone) {
        fieldPhone.sendKeys(filtrPhone);
    }

    @And("^type to input text \"([^\"]*)\" in filtrFIO$")
    public void typeToInputTextInFiltrFIO(String filtrFio) {
        fieldFio.sendKeys(filtrFio);
    }

    @And("^check that date closed from \"([^\"]*)\"$")
    public void checkThatDateClosedFromTo(String period) throws ParseException, InterruptedException {
        waiter.waitUntil(not(visible), 100000);
        int filtColumnSize = returnFiltrColumn().size();
        for (int i = 0; i < filtColumnSize; i = i + 2) {
            returnFiltrColumn().get(i).click();
            viewAndUpdateRequestStepDefinitions.scrollToAddComment();
            getWaiter(2);
            generalStepDefinition.clickButtonWith("Показать историю заявки");
            Date createDate = dateToFormatDdMmYyyyHhMm().parse(returnFiltrColumn().get(i).getValue());
            switch (period) {
                case "В течение суток":
                    checkThatRequestWasClosedDurindTheDay(createDate);
                    break;

                case "От 1 до 7 суток":
                    checkThatRequestWasClosedDuringSevenDays(createDate);
                    break;

                case "От 8 до 15 суток":
                    checkThatRequestWasClosedDuringEightAndFifteenDays(createDate);
                    break;

                case "Более 15 суток":
                    checkThatRequestWasClosedMoreFifteenDays(createDate);
                    break;

                default:
                    throw new IllegalArgumentException("No such close date from in request filtr : " + period);

            }
        }

    }

    private ElementsCollection returnFiltrColumn() {
        return $$(By.xpath("//*[@id=\"root\"]/div/div[1]/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div"));
    }

    @And("^click on the payable filtr$")
    public void clickOnThePayeble() {
        comboBoxPayable.click();
    }

    @And("^click filtr payable free$")
    public void clickFiltrPayableFree() {
        payableFree.click();
    }

    @And("^type to input \"([^\"]*)\" in request defect$")
    public void typeToInputInRequestDefect(String requestDeffect) {
        typeRequest.sendKeys(requestDeffect);
    }

    @And("^click filtr \"([^\"]*)\"$")
    public void clickFiltrPayable(String value) {
        $(By.xpath("//li[@title='" + value + "']")).click();
    }


    @And("^click filtr priority$")
    public void clickFiltrPriority() {
        waiter.waitUntil(not(visible), 10000);
        comboBoxPriority.click();
    }

    @And("^click filtr cancelled reason$")
    public void clickFiltrCancelledReason() {
        cancellReason.click();
    }

    @And("^click filtr reject reason$")
    public void clickFiltrRejectReason() {
        rejectReason.click();
    }

    @And("^click filtr payable status$")
    public void clickFiltrPayableStatus() {
        payableStatus.click();
    }

    @And("^click filtr source$")
    public void clickFiltrSource() {
        filtrSource.click();
    }

    @And("^click filtr fio of create request$")
    public void clickFiltrFioOfCreateRequest() {
        filtrFioCreate.click();
    }

    @And("^click filtr \"([^\"]*)\" in dispCentr$")
    public void clickFiltrInDispCentr(String filtrName) {
        waiter.waitUntil(not(visible), 10000);
        if (filtrName.equals("Оплата картой") || filtrName.equals("Отзыв") || filtrName.equals("Возвращена на доработку"))
            $(By.xpath("//div[@class='menu-filter']//span[contains(text(),'" + filtrName + "')]/../span")).click();
        else {
            $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]//../div")).click();
        }

    }

    @And("^type to input \"([^\"]*)\" in filtr \"([^\"]*)\" in dispCentr$")
    public void typeToInputInFiltrInDispCentr(String value, String filtrName) {
        waiter.waitUntil(not(visible), 10000);
        switch (filtrName) {
            case "Подъезд":
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[1]/input")).clear();
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[1]/input")).setValue(value);
                break;

            case "Этаж":
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[2]/input")).clear();
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[2]/input")).setValue(value);
                break;

            case "Квартира":
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[3]/input")).clear();
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[3]/input")).setValue(value);
                break;

            case "до":
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[2]/input")).clear();
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//span[2]/input")).setValue(value);
                break;

            case "Район":
                $(By.xpath("//*[@class='ant-select-dropdown-search']//input[@role='textbox']")).clear();
                $(By.xpath("//*[@class='ant-select-dropdown-search']//input[@role='textbox']")).setValue(value);
                break;

            default:
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//input")).clear();
                $(By.xpath("//div[@class='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//input")).setValue(value);
                break;

        }

    }

    @And("^click first district in filtr$")
    public void clickFirstDistrictInFiltr() {
        filtrFirstDistrict.click();
    }

    @And("^check that first adress in filtr adress is not visible$")
    public void checkThatFirstAdressInFiltrAdressIsNotVisible() {
        firstAddressFiltr.shouldNotBe(visible);
    }

    @And("^click first region in filtrRequest$")
    public void clickFirstRegionInFiltrRequest() {
        waiter.waitUntil(not(visible), 10000);
        firstRegionRequest.click();
    }

    @And("^click first district in filtrRequest$")
    public void clickFirstDistrictInFiltrRequest() {
        waiter.waitUntil(not(visible), 10000);
        firstDistrictRequest.click();
    }

    @And("^click to field date create with$")
    public void clickToFieldDateCreateWith() {
        filterDateCreateWith.click();
    }

    @And("^click to field date create by$")
    public void clickToFieldDateCreateBy() {
        filterDateCreateBy.click();
    }


    @And("^type to input text \"([^\"]*)\" in dateCreateWith in filtr$")
    public void typeToInputTextInDateCreateWithInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in dateCreateBy in filtr$")
    public void typeToInputTextInDateCreateByInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^click empty in form filtr of request$")
    public void clickEmptyInFormFiltrOfRequest() {
        filterRequestEmpty.click();
    }


    @And("^check that date create of request in grid between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatDateCreateOfRequestInGridBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        waiter.waitUntil(not(visible), 10000);
        for (int i = 0; i < firstColumn.size(); i = i + 2) {
            Assert.assertEquals(parseDate(firstColumn.get(i).getAttribute("title")).before(parseDate(endStringDate)) && parseDate(firstColumn.get(i).getAttribute("title")).after(parseDate(startStringDate)), true);
        }
    }

    @And("^click to field date close with$")
    public void clickToFieldDateCloseWith() {
        filterDateCloseWith.click();
    }

    @And("^type to input text \"([^\"]*)\" in dateCloseWith in filtr$")
    public void typeToInputTextInDateCloseWithInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^click to field date close by$")
    public void clickToFieldDateCloseBy() {
        filterDateCloseBy.click();
    }


    @And("^check that date close of request in card between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatDateCloseOfRequestInCardBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        for (int i = 0; i < returnFiltrFirstColumn().size(); i++) {
            returnFiltrFirstColumn().get(i).click();
            viewAndUpdateRequestStepDefinitions.scrollToAddFile();
            $(byText("Действие")).waitUntil(not(visible), 10000);
            $(byText("Показать историю заявки")).waitUntil(visible, 10000);
            generalStepDefinition.clickButtonWith("Показать историю заявки");
            $(byText("Действие")).waitUntil(visible, 10000);
            viewAndUpdateRequestStepDefinitions.copyDateCloseOfRequestFromHistoryOfRequest();
            typeRequestText.waitUntil(visible, 10000);
            Assert.assertEquals(parseDate(storyOfRequestDateClosedOfRequest.last().toString().substring(4, 20)).before(parseDate(endStringDate)) && parseDate(storyOfRequestDateClosedOfRequest.last().toString().substring(4, 20)).after(parseDate(startStringDate)), true);
        }
    }

    @And("^click to calendar$")
    public void clickToCalendar() {
        filterCalendarDate.click();
    }

    @And("^click first type of request$")
    public void clickFirstTypeOfRequest() {
        waiter.waitUntil(not(visible), 10000);
        firstDeffect.click();
    }


    @And("^check that request was closed during the day$")
    public void checkThatRequestWasClosedDurindTheDay(Date createDate) throws ParseException {
        tableStoryOfrequest.waitUntil(visible, 10000);
        Assert.assertTrue(addHours(createDate, 24).getTime() >= parseDate(returnRequestCloseDate().last().getText()).getTime());
    }

    @And("^check that request was closed during seven days$")
    public void checkThatRequestWasClosedDuringSevenDays(Date createDate) throws ParseException {
        tableStoryOfrequest.waitUntil(visible, 10000);
        Assert.assertTrue(addDays(createDate, 7).getTime() >= parseDate(returnRequestCloseDate().last().getText()).getTime());
    }

    @And("^check that request was closed during eight and fifteen days$")
    public void checkThatRequestWasClosedDuringEightAndFifteenDays(Date createDate) throws ParseException {
        tableStoryOfrequest.waitUntil(visible, 10000);
        Assert.assertTrue(parseDate(returnRequestCloseDate().last().getText()).before(addDays(createDate, 15)) && parseDate(returnRequestCloseDate().last().getText()).after(addDays(createDate, 8)));
    }

    @And("^check that request was closed more fifteen days$")
    public void checkThatRequestWasClosedMoreFifteenDays(Date createDate) throws ParseException {
        tableStoryOfrequest.waitUntil(visible, 10000);
        Assert.assertTrue(addDays(createDate, 15).getTime() <= parseDate(returnRequestCloseDate().last().getText()).getTime());
    }

    @And("^check that column \"([^\"]*)\" in grid between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatColumnInGridBetweenAnd(String columnName, String value1, String value2) {
        int agreedValue;
        nameColumn1.shouldHave(text(columnName));
        for (int i = 0; i < firstColumn.size(); i = i + 2) {
            agreedValue = Integer.parseInt(firstColumn.get(i).getAttribute("title"));
            Assert.assertTrue(Integer.parseInt(value1) <= agreedValue && agreedValue <= Integer.parseInt(value2));
        }
    }

    @And("^check that element with name \"([^\"]*)\" is selected$")
    public void checkThatElementWithNameIsSelected(String fieldName) {
        $(By.xpath("//div[@class='card']//*[contains(text(),'" + fieldName + "')]/..//td[2]//span")).shouldHave(attribute("class", "ant-checkbox ant-checkbox-checked"));
    }

    @And("^check that column \"([^\"]*)\" and field in the card of request is same$")
    public void checkThatColumnAndFieldInTheCardOfRequestIsSame(String columnName) {
        waiter.waitUntil(not(visible), 10000);
        nameColumn1.shouldHave(text(columnName)).isDisplayed();
        for (SelenideElement status : tableColumm1) {
            status.click();
            viewAndUpdateRequestStepDefinitions.scrollToCategory();
            viewAndUpdateRequestStepDefinitions.scrollToAddFile();
            fieldReview.waitUntil(visible, 10000);
            Assert.assertEquals(status.getText(), fieldReview.getText());

        }
    }

    @And("^check that fieldClosedRequest is \"([^\"]*)\"$")
    public void checkThatFieldClosedRequestIs(String fio) {
        tableStoryOfExecutionRequest.shouldHave(text(fio));
    }

    @And("^click first ods with text \"([^\"]*)\"$")
    public void clickFirstOdsWithText(String ods) {
        $(By.xpath("//li[.= '" + ods + "']")).click();
    }

    @And("^click first okrug with text \"([^\"]*)\"$")
    public void clickFirstOkrugWithText(String okrug) {
        $(By.xpath("//li[.= '" + okrug + "']")).click();
    }

    @And("^click first district with text \"([^\"]*)\"$")
    public void clickFirstDistrictWithText(String district) {
        $(By.xpath("//li[.= '" + district + "']")).click();
    }

    @And("^clear okrug in fieldRegion in dispCentr$")
    public void clearOkrugInFieldRegionInDispCentr() {
        clearFieldOkrug.click();
    }

    @And("^check field district is disabled in dispCentr$")
    public void checkFieldDistrictIsDisabledInDispCentr() {
        fieldDistrict.shouldHave(attribute("input ant-select ant-select-disabled"));
    }

    @And("^choose \"([^\"]*)\" in filtr Fio Executer$")
    public void chooseInFiltrFioExecuter(String fioExecuter) {
        $(By.xpath("//*[@role='menuitem' and contains(text(),'" + fioExecuter + "')]")).waitUntil(visible, 10000);
        $(By.xpath("//*[@role='menuitem' and contains(text(),'" + fioExecuter + "')]")).waitUntil(visible, 10000).click();
    }

    @And("^choose \"([^\"]*)\" in filtr Fio Creator$")
    public void chooseInFiltrFioCreator(String fioCreator) {
        $(By.xpath("//*[@role='menuitem' and @title='" + fioCreator + "']")).waitUntil(visible, 10000);
        $(By.xpath("//*[@role='menuitem' and @title='" + fioCreator + "']")).click();
    }

    @And("^choose \"([^\"]*)\" in filtr Fio Closer$")
    public void chooseInFiltrFioCloser(String fioCloser) {
        $(By.xpath("//*[@role='menuitem' and @title='" + fioCloser + "']")).waitUntil(visible, 10000);
        $(By.xpath("//*[@role='menuitem' and @title='" + fioCloser + "']")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is selected in all requests$")
    public void checkThatElementWithNameIsSelectedInAllRequests(String fieldName) {
        for (SelenideElement status : tableColummFiltr1) {
            status.click();
            viewAndUpdateRequestStepDefinitions.scrollToAdditionalPhone();
            checkThatElementWithNameIsSelected(fieldName);
        }
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in all elements$")
    public void checkThatElementWithNameIsDisplayedInAllElements(String columnName) {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableColummFiltr1) {
            status.click();
            $(By.xpath("//div[@class='card']//*[contains(text(),'" + columnName + "')]")).shouldBe(visible);
        }
    }

    @And("^type to input text \"([^\"]*)\" in dateOffWith in filtr$")
    public void typeToInputTextInDateOffWithInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in dateOffBy in filtr$")
    public void typeToInputTextInDateOffByInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in plannedDateOffWith in filtr$")
    public void typeToInputTextInPlannedDateOffWithInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in plannedDateOffBy in filtr$")
    public void typeToInputTextInPlannedDateOffByInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in factedDateOffWith in filtr$")
    public void typeToInputTextInFactedDateOffWithInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^type to input text \"([^\"]*)\" in factedDateOffBy in filtr$")
    public void typeToInputTextInFactedDateOffByInFiltr(String text) {
        filterCalendarDate.sendKeys(text);
    }

    @And("^click to fieldOds$")
    public void clickToFieldOds() {
        odsFiltr.click();
    }

    @And("^click filtr okrug in request filtrs$")
    public void clickFiltrOkrugInRequestFiltrs() {
        filterOkrug.click();
    }

    @And("^click filtr district in request filtrs$")
    public void clickFiltrDistrictInRequestFiltrs() {
        filterDistrict.click();
    }

    @And("^type to input text \"([^\"]*)\" in \"([^\"]*)\" \"([^\"]*)\" in filtr$")
    public void typeToInputTextInInFiltr(String date, String nameField, String timeDate) {
        $(By.xpath("//label[contains(text(),'" + nameField + "')]/..//input[@placeholder='" + timeDate + "']")).setValue(date);
    }

    private ElementsCollection returnFiltrFirstColumn() {
        return $$(By.xpath("//div[@class='react-grid-Canvas']//div/span/div"));
    }

    private ElementsCollection returnRequestCloseDate() {
        return $$(By.xpath("//*[@class='request-view']//*[contains(text(),'Выполнена') or contains(text(),'Отменить') or contains(text(),'Отклонить')]/../td[1]"));
    }

    @Then("^check that \"([^\"]*)\" in grid is \"([^\"]*)\"$")
    public void checkThatInGridIs(String columnName, String value) throws Throwable {
        String elementsPath = "//div[contains(text(),'"+columnName+"')]/../../../../../div[2]/div/div/div/div/div/div/div/div//div";
        for(int i=1;i<returnElementsCollection($$(By.xpath(elementsPath))).size();i=i+2)
            checkThatTextInElementInElementsCollection(elementsPath,i,value);
    }
}


