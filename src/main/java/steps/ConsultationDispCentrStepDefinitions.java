package steps;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static pages.ConsultationGridPage.*;
import static pages.ConsultationGridPage.closeModalWindowOfRequest;
import static pages.ConsultationGridPage.closeModalWindowOff;
import static pages.ConsultationGridPage.firstColumnInGrid;
import static pages.ConsultationGridPage.greyPictogrammInGrid;
import static pages.ConsultationGridPage.modalWindowOfRequest;
import static pages.ConsultationGridPage.modalWindowOff;
import static pages.ConsultationGridPage.pictogrammInGrid;
import static pages.ConsultationGridPage.searchOfConsultation;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.FiltrDispatcherCentrPage.*;
import static pages.FiltrDispatcherCentrPage.tableColumm1Checkbox;
import static pages.FiltrDispatcherCentrPage.tableColumm2Checkbox;

public class ConsultationDispCentrStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in grid consultation$")
    public void checkThatElementWithNameIsDisplayedInGridConsultation(String gridName) {
        $(By.xpath("//div[@class='react-grid-Grid']//*[.='" + gridName + "']")).shouldBe(Condition.visible);
    }

    @And("^check that element grey pictogramm is displayed in first column$")
    public void checkThatElementGreyPictogrammIsDisplayedInFirstColumn() {
        for (SelenideElement status : greyPictogrammInGrid) {
            status.shouldBe(visible);
        }
    }


    @And("^click first consultation on grid$")
    public void clickFirstConsultationOnGrid() {
        waiter.waitUntil(not(visible), 10000);
        firstColumnInGrid.click();
    }

    @And("^check that element any pictogramm is not displayed in first column$")
    public void checkThatElementAnyPictogrammIsNotDisplayedInFirstColumn() {
        for (SelenideElement status : pictogrammInGrid) {
            status.shouldNotHave(attribute("class", "push-solved")).shouldNotHave(attribute("class", "push"));
        }
    }


    @And("^check that element red pictogramm is displayed in first column$")
    public void checkThatElementRedPictogrammIsDisplayedInFirstColumn() {
        for (SelenideElement status : pictogrammInGrid) {
            status.shouldHave(attribute("class", "push"));
        }
    }

    @And("^check to open modal window card of request$")
    public void checkToOpenModalWindowCardOfRequest() {
        modalWindowOfRequest.shouldBe(visible);
    }

    @And("^click to close modal window of request$")
    public void clickToCloseModalWindowOfRequest() {
        closeModalWindowOfRequest.click();
    }

    @And("^click to close modal window off$")
    public void clickToCloseModalWindowOff() {
        closeModalWindowOff.click();
    }

    @And("^check to open modal window card off$")
    public void checkToOpenModalWindowCardOff() {
        modalWindowOff.shouldBe(visible);
    }


    @And("^check that checkbox is disabled and is selected in first column$")
    public void checkThatCheckboxIsDisabledAndIsSelectedInFirstColumn() {
        for (SelenideElement checkbox : tableColumm1Checkbox) {
            checkbox.shouldHave(attribute("class", "ant-checkbox ant-checkbox-checked ant-checkbox-disabled"));
        }
    }


    @And("^check that checkbox is disabled and is selected in second column$")
    public void checkThatCheckboxIsDisabledAndIsSelectedInSecondColumn() {
        for (SelenideElement checkbox : tableColumm2Checkbox) {
            checkbox.shouldHave(attribute("class", "ant-checkbox ant-checkbox-checked ant-checkbox-disabled"));
        }
    }

    @And("^check that checkbox is disabled and is not selected in second column$")
    public void checkThatCheckboxIsDisabledAndIsNotSelectedInSecondColumn() {
        for (SelenideElement checkbox : tableColumm2Checkbox) {
            checkbox.shouldHave(attribute("class", "ant-checkbox ant-checkbox-disabled"));
        }
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in grid consultation$")
    public void checkThatElementWithNameIsNotDisplayedInGridConsultation(String gridName) {
        $(By.xpath("//div[@class='react-grid-Grid']//*[.='" + gridName + "']")).shouldNotBe(Condition.visible);
    }

    @And("^check that element red pictogramm on grid is displayed in title of consultation$")
    public void checkThatElementRedPictogrammOnGridIsDisplayedInTitleOfConsultation() {
        for (SelenideElement pictogramm : pictogrammInGrid) {
            pictogramm.shouldBe(visible);
        }
    }

    @And("^check that element search of consultation is displayed$")
    public void checkThatElementSearchOfConsultationIsDisplayed() {
        searchOfConsultation.shouldBe(visible);
    }

    @And("^click fieldSearchOnNumberConsultation in startPage$")
    public void clickFieldSearchOnNumberConsultationInStartPage() {
        searchOfConsultation.click();
    }

    @And("^type to input with name searchOnNumberConsultation text: \"([^\"]*)\"$")
    public void typeToInputWithNameSearchOnNumberConsultationText(String text) {
        searchOfConsultation.sendKeys(text);
    }
}

