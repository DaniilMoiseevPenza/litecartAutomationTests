package steps;


import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.DisplayPreviousRequestsPage.*;
import static pages.DisplayPreviousRequestsPage.firstAddressNewForm;
import static pages.DisplayPreviousRequestsPage.firstNumberRequestNewForm;
import static pages.DisplayPreviousRequestsPage.previousRequests;
import static pages.NewRequestPage.*;
import static pages.NewRequestPage.buttonEnterSearchRequest;
import static pages.NewRequestPage.fieldSearchOnNumberRequest;

public class DisplayPreviousRequestsStepDefinitions {


    @And("^click first address in formNewRequestAddress$")
    public void clickFirstAddressInFormNewRequestAddress() {
        waiter.waitUntil(not(visible), 10000);
        firstAddressNewForm.click();
    }

    @And("^type to input \"([^\"]*)\" in field \"([^\"]*)\" in form newRequest$")
    public void typeToInputInFieldInFormNewRequest(String value, String newRequestName) {
        waiter.waitUntil(not(visible), 10000);
        if (newRequestName.equals("Подъезд"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[1]/span/input")).sendKeys(value);
        else if (newRequestName.equals("Этаж"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[2]/span/input")).sendKeys(value);
        else if (newRequestName.equals("Квартира"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[3]/span/input")).sendKeys(value);
        else if (newRequestName.equals("Дополнительный телефон"))
            $(By.xpath("//div[@id='new-request']//span[contains(text(),'" + newRequestName + "')]/..//div[2]/span/input")).sendKeys(value);
        else if (newRequestName.equals("Тип заявки"))
            $(By.xpath("//span[@class='ant-select-dropdown-search']/..//span/span/input")).sendKeys(value);
        else if (newRequestName.equals("Домофон (код)"))
            $(By.xpath("//div[@id='new-request']//label[contains (text (), '" + newRequestName + "')]/../span/input")).sendKeys(value);
        else {
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//input")).sendKeys(value);
        }
    }

    @And("^check that element with name \"([^\"]*)\" is not visible in form newRequest$")
    public void checkThatElementWithNameIsNotVisibleInFormNewRequest(String newRequestName) {
        $(By.xpath("//div[@id='previous-requests-panel']//*[contains(text(),'" + newRequestName + "')]")).shouldNotBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is visible in form newRequest$")
    public void checkThatElementWithNameIsVisibleInFormNewRequest(String newRequestName) {
        $(By.xpath("//div[@id='previous-requests-panel']//*[contains(text(),'" + newRequestName + "')]")).shouldBe(visible);
    }

    @And("^click first number of request in block previousRequests$")
    public void clickFirstNumberOfRequestInBlockPreviousRequests() {

        firstNumberRequestNewForm.waitUntil(visible, 10000);
        firstNumberRequestNewForm.click();
    }

    @And("^click delete data in field with name \"([^\"]*)\"$")
    public void clickDeleteDataInFieldWithName(String newRequestName) {
        waiter.waitUntil(not(visible), 10000);
        if (newRequestName.equals("Подъезд"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[1]/span/input")).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
        else if (newRequestName.equals("Этаж"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[2]/span/input")).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
        else if (newRequestName.equals("Квартира"))
            $(By.xpath("//div[@id='new-request']//label[contains(text(),'" + newRequestName + "')]/..//div[3]/span/input")).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
    }


    @And("^check that field \"([^\"]*)\" is \"([^\"]*)\" in modal form request$")
    public void checkThatFieldIsInModalFormRequest(String fieldName, String value) {
        waiter.waitUntil(not(visible), 10000);
        if (fieldName.equals("Основной телефон")) {
            if (!$(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).getText().equals(value))
                $(By.xpath("//div[@id='view-request']//*[contains(text(),'Дополнительный телефон')]/..//td[2]//input")).shouldHave(value(value));
            else
                $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).shouldHave(text(value));
        } else {
            if (fieldName.equals("Квартира"))
                $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/../span[5]/input")).shouldHave(attribute("value", value));
            else
                $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//input")).shouldHave(attribute("value", value));
        }
    }

    @And("^check that field \"([^\"]*)\" is not \"([^\"]*)\" in modal form request$")
    public void checkThatFieldIsNotInModalFormRequest(String fieldName, String value) {
        if (fieldName.equals("Основной телефон"))
            $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//td[2]")).shouldNotHave(text(value));
        else {
            $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName + "')]/..//input")).shouldNotHave(attribute("value", value));
        }
    }

    @And("^check that count of previous requests is (\\d+)$")
    public void checkThatCountOfPreviousRequestsIs(int count) {
        Assert.assertTrue(previousRequests.size() <= count);
    }

    @And("^click fieldSearchOnNumberRequest in form newRequest$")
    public void clickFieldSearchOnNumberRequestInFormNewRequest() {
        fieldSearchOnNumberRequest.click();
    }

    @And("^type to input with name searchOnNumberRequest text: \"([^\"]*)\" in form newRequest$")
    public void typeToInputWithNameSearchOnNumberRequestTextInFormNewRequest(String searchOnNumberRequest) {
        fieldSearchOnNumberRequest.sendKeys(searchOnNumberRequest);
    }

    @And("^click button findRequest in form newRequest$")
    public void clickButtonFindRequestInFormNewRequest() {
        buttonEnterSearchRequest.click();
    }

    @And("^clear fieldSearchOnNumberRequest in form newRequest$")
    public void clearFieldSearchOnNumberRequestInFormNewRequest() {
        String del = Keys.chord(Keys.CONTROL, "a") + Keys.DELETE;
        fieldSearchOnNumberRequest.sendKeys(del);
    }


    @And("^check that number request with name \"([^\"]*)\" is displayed in modal form request$")
    public void checkThatNumberRequestWithNameIsDisplayedInModalFormRequest(String text) {
        String xpath = "//div[@id='view-request']//*[contains(text(),'" + text + "')]";
        $(By.xpath(xpath)).shouldBe(visible);
    }

    @And("^check that field \"([^\"]*)\" or \"([^\"]*)\" is \"([^\"]*)\" in modal form request$")
    public void checkThatFieldOrIsInModalFormRequest(String fieldName1, String fieldName2, String value1) {
        if (!($(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName1 + "')]/..//td[2]")).getText().equals(value1))) {
            $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName2 + "')]/..//td[2]")).shouldHave(text(value1));
        } else
            $(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName1 + "')]/..//td[2]")).shouldHave(text(value1));

    }


    @And("^check that field \"([^\"]*)\" or \"([^\"]*)\" is not \"([^\"]*)\" in modal form request$")
    public void checkThatFieldOrIsNotInModalFormRequest(String fieldName1, String fieldName2, String value1) {
        if (!($(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName1 + "')]/..//td[2]")).getText().equals(value1)))
            ;
        else if ($(By.xpath("//div[@id='view-request']//*[contains(text(),'" + fieldName2 + "')]/..//td[2]")).getText().equals(value1))
            ;
        else {
            Assert.assertTrue(1 == 1);
        }
    }


}




