package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import io.cucumber.datatable.DataTable;
import org.openqa.selenium.By;

import java.util.List;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.ChooseColumsPage.*;
import static pages.ChooseColumsPage.apply;
import static pages.ChooseColumsPage.closeFormChoiseColums;
import static pages.ChooseColumsPage.custom;
import static pages.ChooseColumsPage.deselectAll;
import static pages.ChooseColumsPage.requestType;
import static pages.ChooseColumsPage.scrollToFlat;
import static pages.ChooseColumsPage.selectAll;
import static pages.ChooseColumsPage.swapAll;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.choiceOfColumns;

public class ChooseColumsStepDefinitions {
    

    @Given("^test$")
    public void test() {
        choiceOfColumns.click();
        requestType.click();
    }

    @And("^choose colum \"([^\"]*)\"$")
    public void chooseColum(String columName) {
        String xpath = "//li[.='" + columName + "']";
        $(By.xpath(xpath)).click();
    }

    @And("^click choose colums apply$")
    public void clickChooseColumsApply() {
        apply.click();
    }


    @And("^choose colums main phone$")
    public void chooseColumsMainPhone() {
        chooseColum("Телефон основной");
    }

    @And("^choose colums fio$")
    public void chooseColumsFio() {
        chooseColum("Контактное лицо");
    }

    @And("^choose colums type of request$")
    public void chooseColumsTypeOfRequest() {
        chooseColum("Тип дефекта");
    }


    @And("^choose colums adress, flat, floor , entrance$")
    public void chooseColumsAdressFlatFloorEntranceInColumnsList() {
        chooseColum("Адрес дома");
        chooseColum("Квартира");
        chooseColum("Этаж");
        chooseColum("Подъезд");
    }

    @And("^scroll to flat$")
    public Void scrollToFlat() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", scrollToFlat);
    }

    @And("^choose colums type of payable$")
    public void chooseColumsTypeOfPayable() {
        chooseColum("Платная");
    }

    @And("^click choose column \"([^\"]*)\"$")
    public void clickChooseColumn(String columnNAme) {
        chooseColum(columnNAme);
    }


    @And("^check that element select all is displayed$")
    public void checkThatElementSelectAllIsDisplayed() {
        selectAll.shouldBe(visible);
    }

    @And("^check that element deselect all is displayed$")
    public void checkThatElementRemoveAllIsDisplayed() {
        deselectAll.shouldBe(visible);
    }

    @And("^check that element swap all is displayed$")
    public void checkThatElementChangePlasesIsDisplayed() {
        swapAll.shouldBe(visible);
    }

    @And("^check that element custom is displayed$")
    public void checkThatElementCustomIsDisplayed() {
        custom.shouldBe(visible);
    }

    @And("^check that element apply is displayed$")
    public void checkThatElementApplyIsDisplayed() {
        apply.shouldBe(visible);
    }

    @And("^click to close form choose of colums$")
    public void clickToCloseFormChooseOfColums() {
        closeFormChoiseColums.click();
    }

    @And("^click button select all$")
    public void clickButtonSelectAll() {
        selectAll.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in selected columns$")
    public void checkThatElementWithNameIsDisplayedInSelectedColumns(String text) {
        String xpath = "//div[@class='columns-selected']//*[.='" + text + "']";
        $(By.xpath(xpath)).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in column list$")
    public void checkThatElementWithNameIsDisplayedInColumnList(String text) {
        String xpath = "//div[@class='columns-not-selected']//*[.='" + text + "']";
        $(By.xpath(xpath)).shouldBe(visible);
    }


    @And("^click button swapAll$")
    public void clickButtonSwapAll() {
        swapAll.click();
    }

    @And("^click button custom$")
    public void clickButtonCustom() {
        custom.click();
    }

    @And("^click button deselectAll$")
    public void clickButtonDeselectAll() {
        deselectAll.click();
    }

    @And("^check that element with name is displayed in choose$")
    public void checkThatElementWithNameIsDisplayedInChoose(DataTable dt) {
        List<String> list = dt.asList(String.class);
        for(Object element :list)
            checkThatElementWithNameIsDisplayedInChooseColums(element.toString());
    }

    public void checkThatElementWithNameIsDisplayedInChooseColums(String text) {
        $(By.xpath("//div[@class='column-selector']//*[contains(text(),'" + text + "')]"))
                .shouldBe(visible
                        .because("Элемент с текстом: "+text+" не отображается на экране в карточке заявки"));
    }
}

