package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.text.ParseException;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static helpers.DateHelper.parseDate;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.OffFiltrPage.*;
import static pages.OffFiltrPage.AkAddress;
import static pages.OffFiltrPage.applyButton;
import static pages.OffFiltrPage.cancelButton;
import static pages.OffFiltrPage.categoryOff;
import static pages.OffFiltrPage.checkboxEmergencyOff;
import static pages.OffFiltrPage.checkboxPlannedOff;
import static pages.OffFiltrPage.clearRegion;
import static pages.OffFiltrPage.fieldAddressOffFiltr;
import static pages.OffFiltrPage.fieldDefectName;
import static pages.OffFiltrPage.fieldDistrict;
import static pages.OffFiltrPage.fieldDistrictTextbox;
import static pages.OffFiltrPage.fieldOds;
import static pages.OffFiltrPage.fieldRegion;
import static pages.OffFiltrPage.fieldTypeName;
import static pages.OffFiltrPage.fieldTypeOff;
import static pages.OffFiltrPage.fieldWork;
import static pages.OffFiltrPage.filterDateOffBy;
import static pages.OffFiltrPage.filterDateOffWith;
import static pages.OffFiltrPage.filterFactedDateOnBy;
import static pages.OffFiltrPage.filterFactedDateOnWith;
import static pages.OffFiltrPage.filterPlannedDateOnBy;
import static pages.OffFiltrPage.filterPlannedDateOnWith;
import static pages.OffFiltrPage.firstAddressOff;
import static pages.OffFiltrPage.firstAddressOffinStp;
import static pages.OffFiltrPage.firstDistrict;
import static pages.OffFiltrPage.firstOds;
import static pages.OffFiltrPage.firstRegion;
import static pages.OffFiltrPage.firstTypeOff;
import static pages.OffFiltrPage.labelAddress;
import static pages.OffFiltrPage.resetFilter;
import static pages.OffFiltrPage.tableAddress;
import static pages.OffFiltrPage.tableDisablingTheService;
import static pages.OffFiltrPage.tableDistrict;
import static pages.OffFiltrPage.tableEmergency;
import static pages.OffFiltrPage.tableNumberOff;
import static pages.OffFiltrPage.tableTypeOff;
import static pages.OffFiltrPage.tableWork;
import static pages.OffFiltrPage.valueColumnDateCreateOff;
import static pages.OffFiltrPage.valueColumnDateOff;
import static pages.OffFiltrPage.valueColumnFactedDateOff;
import static pages.OffFiltrPage.valueColumnPlannedDateOff;
import static pages.OffStartPage.*;
import static pages.OffStartPage.pagination;

public class OffFiltrStepsDefinitions {


    @And("^check that applyButton is displayed$")
    public void checkThatApplyButtonIsDisplayed() {
        applyButton.shouldBe(exist);
    }

    @And("^check that cancelButton is displayed$")
    public void checkThatCancelButtonIsDisplayed() {
        cancelButton.shouldBe(exist);
    }

    @And("^check that resetFilterButton is displayed$")
    public void checkThatResetFilterButtonIsDisplayed() {
        resetFilter.shouldBe(exist);
    }

    @And("^type to input text \"([^\"]*)\" in filtrAddressOff$")
    public void typeToInputTextInFieldAddress(String filtrAddressOff) {
        $(By.xpath("//label[.='Адрес:']/../div/div/div[1]/div")).sendKeys(filtrAddressOff);

    }

    @And("^click button applyButton$")
    public void clickButtonApplyButton() {
        applyButton.click();
    }

    @And("^check that address in grid is \"([^\"]*)\"$")
    public void checkThatAddressInGridIs(String fieldAddress) {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement status : tableAddress) {
            // Assert.assertEquals(status.toString().substring(26, 26 + fieldAddress.length()), fieldAddressOffFiltr);
            status.shouldHave(text(fieldAddress));
        }
    }

    @And("^click reset filtroff$")
    public void clickResetFiltroff() {
        resetFilter.click();
    }

    @And("^click to first address in filtrAddressOff$")
    public void clickToFirstAddressInFiltrAddressOff() {
        firstAddressOff.click();
    }


    @And("^type to input text \"([^\"]*)\" in filtrWorkOff$")
    public void typeToInputTextInFiltrWorkOff(String filtrWorkOff) {
        fieldWork.sendKeys(filtrWorkOff);
    }

    @And("^click to organization in filtrWorkOff$")
    public void clickToFirstOrganizationInFiltrWorkOff() {
        fieldWork.click();
    }

    @And("^check that work in grid is \"([^\"]*)\"$")
    public void checkThatWorkInGridIs(String fieldWork) {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement status : tableWork) {
            status.shouldHave(attribute("title", fieldWork), (text(fieldWork)));
        }
    }

    @And("^click checkbox EmergencyOff$")
    public void clickCheckboxEmergencyOff() {
        checkboxEmergencyOff.click();
    }


    @And("^click category off$")
    public void clickCategoryOff() {
        categoryOff.click();
    }


    @And("^check that disabling the service in grid is \"([^\"]*)\"$")
    public void checkThatDisablingTheServiceInGridIs(String fieldTypeOff) {
        for (SelenideElement status : tableDisablingTheService) {
            status.shouldHave(attribute("title", fieldTypeOff), (text(fieldTypeOff)));
        }
    }

    @And("^check that type off in grid is \"([^\"]*)\"$")
    public void checkThatTypeOffInGridIs(String fieldTypeOff) {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement status : tableTypeOff) {
            status.shouldHave(attribute("title", fieldTypeOff), (text(fieldTypeOff)));
        }
    }


    @And("^check that element with name \"([^\"]*)\" is disabled$")
    public void checkThatElementWithNameIsDisabled(String arg0) {
        fieldDistrict.shouldBe(exist);
    }

    @And("^click checkbox PlannedOff$")
    public void clickCheckboxPlannedOff() {
        checkboxPlannedOff.click();
    }


    @And("^click button cancel$")
    public void clickButtonCancel() {
        cancelButton.click();
    }


    @And("^check that number off in grid is \"([^\"]*)\"$")
    public void checkThatNumberOffInGridIs(String fieldSearch) {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement status : tableNumberOff) {
            status.shouldHave(attribute("title", fieldSearch), (text(fieldSearch)));
        }
    }


    @And("^choose category off with name \"([^\"]*)\"$")
    public void chooseCategoryOffWithName(String category) {
        $(By.xpath("//span[@class='ant-select-tree-title' and .='" + category + "']")).click();

    }

    @And("^choose deffect off with name \"([^\"]*)\"$")
    public void chooseDeffectOffWithName(String defect) {
        $(By.xpath("//span[@class='ant-select-tree-title' and .='" + defect + "']")).click();
    }

    public void waitPagination() {
        pagination.waitUntil(visible, 20000);
    }

    @And("^check that emergency in grid is \"([^\"]*)\"$")
    public void checkThatEmergencyInGridIs(String emergency) {
        waitPagination();
        for (SelenideElement status : tableEmergency) {
            //Assert.assertEquals(status.toString().substring(26,26+emergency.length()),emergency);
            status.shouldHave(attribute("value", emergency));
        }
    }


    @And("^click off type vodootvedenie$")
    public void clickOffTypeVodootvedenie() {
        fieldTypeName.click();
    }

    @And("^click off type zaliv vody$")
    public void clickOffTypeZalivVody() {
        fieldDefectName.click();
    }


    @And("^click field \"([^\"]*)\" in filtr$")
    public void clickFieldInFiltr(String filtrName) {
        $(By.xpath("//label[contains(text(),'" + filtrName + "')]/../span/span")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in filtr off$")
    public void checkThatElementWithNameIsDisplayedInFiltrOff(String filtrName) {
        $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + filtrName + "')]")).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in filtr off$")
    public void checkThatElementWithNameIsNotDisplayedInFiltrOff(String filtrName) {
        $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + filtrName + "')]")).shouldNotBe(visible);
    }


    @And("^wait pagination disp centr$")
    public void waitPaginationDispCentr() {
        waiter.waitUntil(not(visible), 15000);
    }

    @And("^wait pagination disp centr STP$")
    public void waitPaginationDispCentrStp() {
        waiter.waitUntil(not(visible), 15000);
        // paginationStp.waitUntil(visible, 15000);
    }

    @And("^click button with text \"([^\"]*)\" in filtrOff$")
    public void clickButtonWithTextInFiltrOff(String buttonName) {
        $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + buttonName + "')]")).click();
    }

    @And("^click off category \"([^\"]*)\" in filtr off$")
    public void clickOffCategoryInFiltrOff(String categoryName) {
        $(By.xpath("//ul[@class='ant-select-tree']//span[.='" + categoryName + "']//../span[1]")).click();
    }

    @And("^click off defect \"([^\"]*)\" in filttr off$")
    public void clickOffDefectInFilttrOff(String defectName) {
        $(By.xpath("//ul[@class='ant-select-tree']//span[.='" + defectName + "']")).click();
    }

    @And("^check that first address is empty in filtr off$")
    public void checkThatFirstAddressIsEmptyInFiltrOff() {
        firstAddressOff.shouldNotBe(visible);
    }

    @And("^check that first address is not empty in filtr off$")
    public void checkThatFirstAddressIsNotEmptyInFiltrOff() {
        firstAddressOff.shouldBe(visible);
    }

    @And("^check that text is empty in filtr \"([^\"]*)\"$")
    public void checkThatTextIsEmptyInFiltr(String filtrName) {
        $(By.xpath("//label[contains(text(),'" + filtrName + "')]/../div/div/div/ul/li/div/input")).shouldHave(attribute("value", ""));
    }


    @And("^click empty in form filtr off$")
    public void clickEmptyInFormFiltrOff() {
        labelAddress.click();
    }

    @And("^check that date create off between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatDateCreateOffBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        waiter.waitUntil(not(visible), 20000);
        for (int i = 0; i < valueColumnDateCreateOff.size(); i++) {
            Assert.assertTrue(parseDate(valueColumnDateCreateOff.get(i).getText()).before(parseDate(endStringDate)) && parseDate(valueColumnDateCreateOff.get(i).getText()).after(parseDate(startStringDate)));
        }
    }

    @And("^click to field date off with$")
    public void clickToFieldDateOffWith() {
        filterDateOffWith.click();
    }

    @And("^click to field date off by$")
    public void clickToFieldDateOffBy() {
        filterDateOffBy.click();
    }


    @And("^check that date off between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatDateOffBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        waiter.waitUntil(not(visible), 20000);
        for (int i = 0; i < valueColumnDateOff.size(); i++) {
            Assert.assertTrue(parseDate(valueColumnDateOff.get(i).getText()).before(parseDate(endStringDate)) && parseDate(valueColumnDateOff.get(i).getText()).after(parseDate(startStringDate)));
        }
    }

    @And("^click to field planned date off with$")
    public void clickToFieldPlannedDateOffWith() {
        filterPlannedDateOnWith.click();
    }

    @And("^click to field planned date off by$")
    public void clickToFieldPlannedDateOffBy() {
        filterPlannedDateOnBy.click();
    }


    @And("^check that planned date off between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatPlannedDateOffBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        waiter.waitUntil(not(visible), 20000);
        for (int i = 0; i < valueColumnPlannedDateOff.size(); i++) {
            Assert.assertTrue(parseDate(valueColumnPlannedDateOff.get(i).getText()).before(parseDate(endStringDate)) && parseDate(valueColumnPlannedDateOff.get(i).getText()).after(parseDate(startStringDate)));
        }
    }

    @And("^click to field facted date off with$")
    public void clickToFieldFactedDateOffWith() {
        filterFactedDateOnWith.click();
    }

    @And("^click to field facted date off by$")
    public void clickToFieldFactedDateOffBy() {
        filterFactedDateOnBy.click();
    }


    @And("^check that facted date off between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatFactedDateOffBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        waiter.waitUntil(not(visible), 20000);
        for (int i = 0; i < valueColumnFactedDateOff.size(); i++) {
            Assert.assertTrue(parseDate(valueColumnFactedDateOff.get(i).getText()).before(parseDate(endStringDate)) && parseDate(valueColumnFactedDateOff.get(i).getText()).after(parseDate(startStringDate)));
        }
    }


    @And("^click first type off$")
    public void clickFirstTypeOff() {
        firstTypeOff.click();
    }

    @And("^click fieldTypeOff in filtrOff$")
    public void clickFieldTypeOffInFiltrOff() {
        fieldTypeOff.click();
    }

    @And("^click to fieldRegion in filtrOff$")
    public void clickToFieldRegionInFiltrOff() {
        fieldRegion.click();
    }

    @And("^click first region in fieldRegion in filtrOff$")
    public void clickFirstRegionInFieldRegionInFiltrOff() {
        firstRegion.click();
    }

    @And("^click to fieldDistrict in filtrOff$")
    public void clickToFieldDistrictInFiltrOff() {
        fieldDistrict.click();
    }


    @And("^click first district in fieldDistrictOff$")
    public void clickFirstDistrictInFieldDistrictOff() {
        firstDistrict.click();
    }

    @And("^check that region in grid off is \"([^\"]*)\"$")
    public void checkThatRegionInGridOffIs(String text) {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement region : tableDistrict) {
//            Assert.assertEquals(status.toString().substring(60, 60 + district.length()), district);
            Assert.assertEquals(text,region.getText().substring(0, 3) );
        }
    }

    @And("^check that district in grid off is \"([^\"]*)\"$")
    public void checkThatDistrictInGridOffIs(String text)   {
        waiter.waitUntil(not(visible), 20000);
        for (SelenideElement district : tableDistrict) {
            Assert.assertEquals(text, district.getText().substring(5, 14));
        }
    }

    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" in filtrOff$")
    public void typeToInputTextInFiltrInFiltrOff(String value, String filtrName)   {
        waiter.waitUntil(not(visible), 20000);
        if (filtrName.equals("Тип отключения")) {
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//span/span/ul/li/span")).sendKeys(value);
        } else {
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//div/input")).clear();
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//div/input")).sendKeys(value);
        }
    }

    @And("^clear region in fieldRegionOff$")
    public void clearRegionInFieldRegionOff() {
        fieldRegion.click();
        clearRegion.click();
    }

    @And("^check fieldDistrictOff is disabled$")
    public void checkFieldDistrictOffIsDisabled() {
        fieldDistrict.shouldNotHave(text("муниципальный округ Арбат")).shouldBe(disabled);
    }

    @And("^type to input text \"([^\"]*)\" in filtrDistrictOff$")
    public void typeToInputTextInFiltrDistrictOff(String text) {
        fieldDistrictTextbox.sendKeys(text);
    }

    @And("^click to field address in filtrOff$")
    public void clickToFieldAddressInFiltrOff() {
        fieldAddressOffFiltr.click();
    }

    @And("^check that addresses is displayed$")
    public void checkThatAddressesIsDisplayed() {
        AkAddress.shouldBe(visible);
    }

    @And("^check fieldOds is disabled$")
    public void checkFieldOdsIsDisabled()   {
        fieldOds.shouldBe(disabled);
    }

    @And("^click to fieldOds in filtrOff$")
    public void clickToFieldOdsInFiltrOff()   {
        fieldOds.click();
    }

    @And("^click first ods in fieldOds in filtrOff$")
    public void clickFirstOdsInFieldOdsInFiltrOff()   {
        firstOds.click();
    }

    @And("^click first string with name \"([^\"]*)\"$")
    public void clickFirstStringWithName(String nameString)   {
        $(By.xpath("//li[contains(text(),'" + nameString + "')]")).click();
    }

    @And("^click to first address in filtrAddressOffInSTP$")
    public void clickToFirstAddressInFiltrAddressOffInSTP()   {
        firstAddressOffinStp.click();
    }


    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" \"([^\"]*)\" in off$")
    public void typeToInputTextInFiltrInOff(String text, String filtrName, String period) {
        if (period.equals("с") || period.equals("по")) {
            $(By.xpath("//label[contains(text(),'" + filtrName + "')]//..//input[@placeholder='" + period + "']")).clear();
            $(By.xpath("//label[contains(text(),'" + filtrName + "')]//..//input[@placeholder='" + period + "']")).sendKeys(text);
        } else {
            $(By.xpath("//label[contains(text(),'" + filtrName + "')]//..//input")).clear();
            $(By.xpath("//label[contains(text(),'" + filtrName + "')]//..//input")).sendKeys(text);
        }

    }

    @And("^click organization in filtr off with name \"([^\"]*)\"$")
    public void clickOrganizationInFiltrOffWithName(String organizationName) {
        $(By.xpath("//ul//li[contains(text(),'" + organizationName + "')]")).click();
    }
}




