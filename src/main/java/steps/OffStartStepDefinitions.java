package steps;

import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.ExportRequestPage.*;
import static pages.ExportRequestPage.notificationExport;
import static pages.OffFiltrPage.*;
import static pages.OffFiltrPage.fieldAddressOffFiltr;
import static pages.OffStartPage.*;
import static pages.OffStartPage.arrowOff;
import static pages.OffStartPage.createDateOff;
import static pages.OffStartPage.exportOff;
import static pages.OffStartPage.fieldSearchOff;
import static pages.OffStartPage.filtrOff;
import static pages.OffStartPage.firstOff;
import static pages.OffStartPage.firstPage;
import static pages.OffStartPage.lastPage;
import static pages.OffStartPage.messageOff;
import static pages.OffStartPage.newOff;
import static pages.OffStartPage.nextPage;
import static pages.OffStartPage.pagination;
import static pages.OffStartPage.prevPage;
import static pages.OffStartPage.searchOff;
import static pages.OffStartPage.secondNotificationOff;
import static pages.OffStartPage.showDeleted;

public class OffStartStepDefinitions {


    @And("^check that element newOff is displayed$")
    public void checkThatElementNewOffIsDisplayed() {
        newOff.shouldBe(visible);
    }

    @And("^click button createNewOff$")
    public void clickButtonCreateNewOff() {
        newOff.click();
    }

    @And("^check that element searchoff is displayed$")
    public void checkThatElementSearchoffIsDisplayed() {
        searchOff.shouldBe(visible);
    }

    @And("^check that element filtrOff is displayed$")
    public void checkThatElementFiltrOffIsDisplayed() {
        filtrOff.shouldBe(visible);
    }

    @And("^check that element arrowOff is displayed$")
    public void checkThatElementArrowOffIsDisplayed() {
        arrowOff.shouldBe(visible);
    }

    @And("^check that element fieldSearchOff is displayed$")
    public void checkThatElementFieldSearchOffIsDisplayed() {
        fieldSearchOff.shouldBe(exist);
    }

    @And("^check that element showDeleted is displayed$")
    public void checkThatElementShowDeletedIsDisplayed() {
        showDeleted.shouldBe(exist);
    }


    @And("^click button filtroff$")
    public void clickButtonFiltroff() {
        if (!fieldAddressOffFiltr.isDisplayed()) {
            filtrOff.click();
        }
    }

    @And("^check that element exportOff is displayed$")
    public void checkThatElementExportOffIsDisplayed() {
        exportOff.shouldBe(visible);
    }

    @And("^click first off$")
    public void clickFirstOff() {
        waitPagination();
        firstOff.click();
    }


    @And("^click collapse off$")
    public void clickCollapseOff() {
        arrowOff.click();
    }


    @And("^type to input with fieldSearch text: \"([^\"]*)\"$")
    public void typeToInputWithFieldSearchText(String fieldSearch) {
        clearFieldSearchInOff();
        fieldSearchOff.sendKeys(fieldSearch);
    }

    @And("^click button enter$")
    public void clickButtonEnter() {
        searchOff.click();
    }

    @And("^click checkbox show deleted$")
    public void clickCheckboxShowDeleted() {
        showDeleted.click();
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in grid off$")
    public void checkThatElementWithNameIsDisplayedInGridOff(String text) {
        $(By.xpath("//div[@class=\"react-grid-HeaderRow\"]//*[.='" + text + "']")).shouldBe(visible);
    }

    @And("^scroll to create date off in grid off$")
    public Void scrollToCreateDateOffInGridOff() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", createDateOff);
    }

    @And("^wait pagination$")
    public void waitPagination() {
        pagination.waitUntil(visible, 10000);
    }

    @And("^check that element newOff is not displayed$")
    public void checkThatElementNewOffIsNotDisplayed() {
        newOff.shouldNotBe(visible);
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in pagination off$")
    public void checkThatElementWithNameIsDisplayedInPaginationOff(String pageNumber) {
        waitPagination();
        pagination.shouldHave(text(pageNumber));
        //Assert.assertEquals(pagination.toString().substring(23, 33), pageNumber);
    }

    @And("^click next page off$")
    public void clickNextPageOff() {
        nextPage.click();
    }

    @And("^click to go to prev page off$")
    public void clickToGoToPrevPageOff() {
        prevPage.click();
    }

    @And("^click to go to last page in off$")
    public void clickToGoToLastPageInOff() {
        lastPage.click();
    }


    @And("^click to go to first page in off$")
    public void clickToGoToFirstPageInOff() {
        firstPage.click();
    }

    @And("^check that last page in grid off is last$")
    public void checkThatLastPageInGridOffIsLast() {
        waitPagination();
        Assert.assertEquals(pagination.toString().substring(32, 33), pagination.toString().substring(37, 39));

    }

    @And("^click button with text \"([^\"]*)\" in off$")
    public void clickButtonWithTextInOff(String buttonName) {
        $(By.xpath("//div[@class='disablings-table']//*[contains (text(), '" + buttonName + "')]")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in restartDeleteOff$")
    public void checkThatElementWithNameIsDisplayedInRestartDeleteOff(String text) {
        $(By.xpath("//div[@id='outage-dialogue']//div[contains (text(), '" + text + "')]")).shouldBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is displayed in restartDeleteOff$")
    public void checkThatButtonWithTextIsDisplayedInRestartDeleteOff(String buttonName) {
        $(By.xpath("//div[@id='outage-dialogue']//button[contains (text(), '" + buttonName + "')]")).shouldBe(visible);
    }

    @And("^click button with text \"([^\"]*)\" in restartDeleteOff$")
    public void clickButtonWithTextInRestartDeleteOff(String buttonName) {
        $(By.xpath("//div[@id='outage-dialogue']//button[contains (text(), '" + buttonName + "')]")).click();
    }

    @And("^check pop-up message at restart off is displayed$")
    public void checkPopUpMessageAtRestartOffIsDisplayed() {
        messageOff.shouldHave(text("Отключение №  \" + \"[0-9]\" + \" восстановлено")).shouldBe(visible);
    }

    @And("^check pop-up message at delete off is displayed$")
    public void checkPopUpMessageAtDeleteOffIsDisplayed() {
        messageOff.shouldHave(text("Отключение №  \" + \"[0-9]\" + \" удалено")).shouldBe(visible);
    }

    @And("^check that button cancel is displayed in restartDeleteOff$")
    public void checkThatButtonCancelIsDisplayedInRestartDeleteOff() {
        $(By.xpath("//*[@id=\"outage-dialogue\"]/div[1][contains (text(), 'Восстановление')]/..//div/..//button[contains (text(), 'Отмена')]")).shouldBe(visible);
    }

    @And("^type to input with name searchOnNumberOff text from number$")
    public void typeToInputWithNameSearchOnNumberOffTextFromNumber() {
        fieldSearchOff.sendKeys(Keys.CONTROL + "v");
    }

    @And("^check pop-up message that need to write in reason of delete is displayed$")
    public void checkPopUpMessageThatNeedToWriteInReasonOfDeleteIsDisplayed() {
        messageOff.shouldHave(text("Не заполнено поле причина удаления")).shouldBe(visible);
    }

    @And("^click buttonExportOff$")
    public void clickButtonExportOff()   {
        exportOff.click();
    }

    @And("^check pop-up message at export off is displayed$")
    public void checkPopUpMessageAtExportOffIsDisplayed()   {
        notificationExport.shouldHave(text("Подождите, файл формируется.")).waitUntil(visible, 10000);
        secondNotificationOff.shouldBe(visible).shouldHave(text("Скачать"));
    }

    @And("^clear fieldSearch in off$")
    public void clearFieldSearchInOff() {
        fieldSearchOff.clear();
    }
}



