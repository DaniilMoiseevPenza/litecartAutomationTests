package steps;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.text.ParseException;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selectors.byXpath;
import static com.codeborne.selenide.Selenide.*;
import static helpers.DateHelper.parseDate;
import static pages.ConsultationGridPage.*;
import static pages.ConsultationGridPage.columnPhone;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.FiltrConsultationPage.*;
import static pages.FiltrConsultationPage.buttonFiltrConsultation;
import static pages.FiltrConsultationPage.checkboxNo;
import static pages.FiltrConsultationPage.checkboxProblemSituation;
import static pages.FiltrConsultationPage.checkboxYes;
import static pages.FiltrConsultationPage.clearFieldRegion;
import static pages.FiltrConsultationPage.columnDateCreateOfConsultation;
import static pages.FiltrConsultationPage.fieldCloseProblemSituation;
import static pages.FiltrConsultationPage.fieldDistrictInGridConsultation;
import static pages.FiltrConsultationPage.fieldDistrictOfConsultation;
import static pages.FiltrConsultationPage.fieldProvidedConsultationInFiltr;
import static pages.FiltrConsultationPage.fieldRegionInGridConsultation;
import static pages.FiltrConsultationPage.fieldRegionOfConsultation;
import static pages.FiltrConsultationPage.fieldTypeOfConsultationInFiltr;
import static pages.FiltrConsultationPage.firstAddressConsultation;
import static pages.FiltrConsultationPage.firstConsultationInGrid;
import static pages.FiltrConsultationPage.firstDistrictConsultation;
import static pages.FiltrConsultationPage.firstRegionConsultation;
import static pages.FiltrConsultationPage.firstTypeOfConsultation;
import static pages.FiltrConsultationPage.labelProblemSituation;
import static pages.FiltrConsultationPage.textBoxFieldDistrict;
import static pages.FiltrConsultationPage.textboxTypeOfConsultationInFiltr;

public class FiltrConsultationStepDefinitions {


    @And("^click filter of consultation$")
    public void clickFilterOfConsultation() {
        if (!$(byText("Сбросить фильтр")).isDisplayed())
            buttonFiltrConsultation.click();
    }


    @And("^click first address in fieldAddress$")
    public void clickFirstAddressInFieldAddress() {
        firstAddressConsultation.click();
    }

    @And("^click first consultation$")
    public void clickFirstConsultation() {
        firstConsultationInGrid.click();
    }


    @And("^click checkbox no in filtr$")
    public void clickCheckboxNoInFiltr() {
        checkboxNo.click();
    }

    @And("^click checkbox yes in filtr$")
    public void clickCheckboxYesInFiltr() {
        checkboxYes.click();
    }

    @And("^click field type of consultation$")
    public void clickFieldTypeOfConsultation() {
        fieldTypeOfConsultationInFiltr.click();
    }

    @And("^click checkbox of problem consultation in filtr$")
    public void clickCheckboxOfProblemConsultationInFiltr() {
        checkboxProblemSituation.click();
    }

    @And("^click on first type of consultation$")
    public void clickOnFirstTypeOfConsultation() {
        firstTypeOfConsultation.click();
    }

    @And("^click field provided consultation$")
    public void clickFieldProvidedConsultation() {
        fieldProvidedConsultationInFiltr.click();

    }

    @And("^click first region in fieldRegion$")
    public void clickFirstRegionInFieldRegion() {
        firstRegionConsultation.click();
    }

    @And("^click first district in fieldDistrict$")
    public void clickFirstDistrictInFieldDistrict() {
        firstDistrictConsultation.click();
    }

    @And("^clear region in fieldRegion$")
    public void clearRegionInFieldRegion() {
        fieldRegionOfConsultation.click();
        clearFieldRegion.click();
    }

    @And("^check fieldDistrict is disabled$")
    public void checkFieldDistrictIsDisabled() {
        fieldDistrictOfConsultation.shouldNotHave(text("муниципальный округ Арбат")).shouldBe(disabled);
    }

    @And("^click to fieldRegion$")
    public void clickToFieldRegion() {
        fieldRegionOfConsultation.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" in filtrConsultation$")
    public void typeToInputTextInFiltrInFiltrConsultation(String value, String filtrName) {
        waiter.waitUntil(not(visible), 10000);
        if (filtrName.equals("Квартира") || filtrName.equals("Контактное лицо") || filtrName.equals("Номер заявки"))
            $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//span/input")).sendKeys(value);
        else if (filtrName.equals("Телефон"))
            $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + filtrName + "')]/../div//input")).sendKeys(value);
        else
            $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//div/input")).sendKeys(value);
    }

    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\"$")
    public void checkThatFieldIs(String fieldName, String value) {
        waiter.waitUntil(not(visible), 10000);
        if (fieldName.equals("Этаж"))
            $(By.xpath("//div[@class='info']//*[contains(text(),'" + fieldName + "')]//../td[4]")).shouldHave(text(value));
        else if (fieldName.equals("Квартира"))
            $(By.xpath("//div[@class='info']//*[contains(text(),'" + fieldName + "')]//../td[6]")).shouldHave(text(value));
        else if (fieldName.equals("Телефон основной")) {
            if ($(By.xpath("//div[@class='info']//*[contains(text(),'" + fieldName + "')]//../td[2]")).getText().equals(value))
                Assert.assertEquals(1, 1);
            else
                $(By.xpath("//div[@class='info']//*[contains(text(),'Телефон дополнительный')]//../td[2]")).shouldHave(text(value));
        } else
            $(By.xpath("//div[@class='info']//*[contains(text(),'" + fieldName + "')]//../td[2]")).shouldHave(text(value));
    }


    @And("^type to input text \"([^\"]*)\" in filtrTypeConsultation$")
    public void typeToInputTextInFiltrTypeConsultation(String filtrTypeConsultation) {
        textboxTypeOfConsultationInFiltr.sendKeys(filtrTypeConsultation);
    }

    @And("^click empty in form filtr of consultation$")
    public void clickEmptyInFormFiltrOfConsultation() {
        labelProblemSituation.click();
    }


    @And("^click checkbox emergency request$")
    public void clickCheckboxEmergencyRequest() {
        $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'Аварийная заявка')]//..//span")).click();
    }


    @And("^check that checkbox \"([^\"]*)\" is displayed and \"([^\"]*)\" is selected$")
    public void checkThatCheckboxIsDisplayedAndIsSelected(String checkboxName, String selectedName) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='menu-filter']//*[.='" + checkboxName + "']")).shouldBe(visible);
        $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + selectedName + "')]/..//span")).shouldHave(attribute("class", "ant-radio ant-radio-checked"));
    }

    @And("^click button with \"([^\"]*)\" in modal form request$")
    public void clickButtonWithInModalFormRequest(String text) {
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + text + "')]/..//span")).waitUntil(visible, 10000);
        $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + text + "')]/..//span")).click();
    }

    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" consultation$")
    public void typeToInputTextInFiltrConsultation(String value, String filtrName) {
        if (filtrName.equals("Телефон")) {
            $(By.xpath("//*[@id=\"menu-filter\"]//label[contains(text(),'" + filtrName + "')]/../input")).clear();
            $(By.xpath("//*[@id=\"menu-filter\"]//label[contains(text(),'" + filtrName + "')]/../input")).sendKeys(value);
        } else {
            $(By.xpath("//*[@id=\"menu-filter\"]//label[contains(text(),'" + filtrName + "')]/..//input")).clear();
            $(By.xpath("//*[@id=\"menu-filter\"]//label[contains(text(),'" + filtrName + "')]/..//input")).sendKeys(value);
        }
    }

    @And("^type to choose \"([^\"]*)\" category and \"([^\"]*)\" defect in filtr consultation$")
    public void tyoeToChooseCategoryAndDefectInFiltrConsultation(String categoryName, String defectName) {
        $(By.xpath("//span[contains(text(),'" + categoryName + "')]//..//../span[2]")).click();
        $(By.xpath("//span[contains(text(),'" + defectName + "')]//..//..//span[2]")).click();
    }

    @And("^check that column \"([^\"]*)\" is \"([^\"]*)\" in consultation$")
    public void checkThatColumnIsInConsultation(String columnName, String value) {
        ElementsCollection fieldGridConsultation;
        if (!columnName.equals("Телефон основной"))
            fieldGridConsultation = $$(By.xpath("//div[@class='react-grid-Canvas']/div/div/div/div[" + returnNumberOfColumn(columnName) + "]//span/div"));
        else
            fieldGridConsultation = $$(By.xpath("//div[@class='react-grid-Canvas']/div/div/div/div[" + returnNumberOfColumn(columnName) + "]//span/span"));
        if (!fieldGridConsultation.isEmpty())
            for (SelenideElement column1 : fieldGridConsultation) {
                if (!columnName.equals("Телефон основной"))
                    if (!columnName.equals("ОДС"))
                        Assert.assertTrue(column1.getAttribute("title").toLowerCase().contains(value.toLowerCase()));

                    else {
                        Assert.assertTrue(column1.toString().toLowerCase().contains(value.toLowerCase()));
                    }
            }
        else
            Assert.assertTrue(2 == 1);
    }

    public int returnNumberOfColumn(String columnName) {
        int numberColumn = 0;
        switch (columnName) {
            case "ОДС":
                numberColumn = 1;
                break;
            case "Дата составления":
                numberColumn = 2;
                break;
            case "Категория консультации":
                numberColumn = 3;
                break;
            case "Тип консультации":
                numberColumn = 4;
                break;
            case "Описание":
                numberColumn = 5;
                break;
            case "Адрес":
                numberColumn = 6;
                break;
            case "Комментарий к адресу":
                numberColumn = 7;
                break;
            case "Контактное лицо":
                numberColumn = 8;
                break;
            case "Телефон основной":
                numberColumn = 9;
                break;
            case "Телефон дополнительный":
                numberColumn = 10;
                break;
            case "По заявке":
                numberColumn = 11;
                break;
            case "По отключению":
                numberColumn = 12;
                break;
            case "Проблемная ситуация":
                numberColumn = 13;
                break;
            case "Оказал консультацию":
                numberColumn = 14;
                break;
            case "Проблема решена":
                numberColumn = 15;
                break;
            default:
                throw new IllegalArgumentException("There is not column name  " + columnName + " in request grid");


        }
        return numberColumn;
    }

    @And("^type to choose \"([^\"]*)\" in filtr consultation$")
    public void typeToChooseInFiltrConsultation(String value) {
        $(byXpath("//li[contains(text(),'" + value + "')]")).click();
    }

    @And("^click in filtr \"([^\"]*)\" consultation$")
    public void clickInFiltrConsultation(String filtrName) {
        $(By.xpath("//*[@id='menu-filter']//label[contains(text(),'" + filtrName + "')]/..//div/div/div")).click();
    }


    @And("^scroll to columnPhoneConsultation in grid consultation$")
    public Void scrollToColumnPhoneConsultationInGridConsultation() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", columnPhone);

    }

    @And("^check that field \"([^\"]*)\" is not \"([^\"]*)\"$")
    public void checkThatFieldIsNot(String fieldName, String value) {
        $(By.xpath("//div[@class='info']//*[contains(text(),'" + fieldName + "')]//../td[4]")).shouldNotHave(text(value));
    }

    @And("^check that date create of consultation in grid between \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatDateCreateOfConsultationInGridBetweenAnd(String startStringDate, String endStringDate) throws ParseException {
        Assert.assertEquals(parseDate(columnDateCreateOfConsultation.toString().substring(30, 46)).before(parseDate(endStringDate)) && parseDate(columnDateCreateOfConsultation.toString().substring(30, 46)).after(parseDate(startStringDate)), true);
    }

    @And("^click first type of consultation with text \"([^\"]*)\"$")
    public void clickFirstTypeOfConsultationWithText(String typeOfConsultationName) {
        $(By.xpath("//li[.= '" + typeOfConsultationName + "']")).click();
    }

    @And("^click to fieldDistrict$")
    public void clickToFieldDistrict() {
        fieldDistrictOfConsultation.waitUntil(visible, 10000);
        fieldDistrictOfConsultation.click();
    }


    @And("^type to input text \"([^\"]*)\" in filtrDistrictConsultation$")
    public void typeToInputTextInFiltrDistrictConsultation(String filtrDistrictConsultation) {
        textBoxFieldDistrict.sendKeys(filtrDistrictConsultation);
    }


    @And("^check that region in grid is \"([^\"]*)\"$")
    public void checkThatRegionInGridIs(String region) {
        for (SelenideElement status : fieldRegionInGridConsultation) {
            Assert.assertEquals(region,status.getText());
        }
    }

    @And("^check that district in grid is \"([^\"]*)\"$")
    public void checkThatDistrictInGridIs(String district) {
        for (SelenideElement status : fieldDistrictInGridConsultation) {
            Assert.assertEquals(district, status.getText());
        }
    }


    @And("^click field closed problem situation$")
    public void clickFieldClosedProblemSituation() {
        fieldCloseProblemSituation.click();
    }

    @And("^click text \"([^\"]*)\"$")
    public void clickText(String text) {
        $(By.xpath("//*[@title='" + text + "']")).click();
    }

    @And("^click to field \"([^\"]*)\" in filtr consultation$")
    public void clickToFieldInFiltrConsultation(String fieldName) {
        if (!fieldName.equals("Тип консультации"))
            $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + fieldName + "')]/../div")).click();
        else
            $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'" + fieldName + "')]/../span")).click();
    }

    @And("^click category consultation \"([^\"]*)\"$")
    public void clickCategoryConsultation(String category) {
        $(By.xpath("//*[@role = 'tree-node']//span[contains(text(),'" + category + "')]//..//../span[1]")).click();
    }

    @And("^click address \"([^\"]*)\" in filtrAddress$")
    public void clickAddressInFiltrAddress(String address) {
        $(By.xpath("//div[@id='addressContainerPopup-addr6']//*[contains(text(),'" + address + "')]")).click();
    }

    @And("^click checkboks \"([^\"]*)\" in filtr consultation$")
    public void clickCheckboksInFiltrConsultation(String checkBoxName) {
        $(By.xpath("//*[contains(text(),'" + checkBoxName + "')]//..//input[@type='checkbox']")).click();
    }
}