package steps;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static pages.SubjectsEmployeesPage.*;
import static pages.SubjectsEmployeesPage.fieldNameOfOrganizationEmployees;
import static pages.SubjectsEmployeesPage.fieldNameOfSubdivision;
import static pages.SubjectsEmployeesPage.fieldPosition;
import static pages.SubjectsEmployeesPage.fieldRegisratedInMobileAp;
import static pages.SubjectsEmployeesPage.firstOrganization;
import static pages.SubjectsEmployeesPage.firstPosition;
import static pages.SubjectsEmployeesPage.firstRegistrated;
import static pages.SubjectsEmployeesPage.firstSubdivision;
import static pages.SubjectsEmployeesPage.outsideSystem;
import static pages.SubjectsEmployeesPage.tableFio;
import static pages.SubjectsEmployeesPage.tableNameOfOrganization;
import static pages.SubjectsEmployeesPage.tableNameOfSubdivision;
import static pages.SubjectsEmployeesPage.tablePosition;
import static pages.SubjectsEmployeesPage.textBoxRegisratedInMobileAp;
import static pages.SubjectsOrganizationPage.*;
import static pages.SubjectsOrganizationPage.paginationSubjects;

public class SubjectsEmployeesStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in filtr employees$")
    public void checkThatElementWithNameIsDisplayedInFiltrEmployees(String fieldName) {
        $(By.xpath("//*[@id='menu-filter']/div/div[4]//label[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
    }

    @And("^click to fieldNameOfOrganization in filtr employees$")
    public void clickToFieldNameOfOrganizationInFiltrEmployees() {
        fieldNameOfOrganizationEmployees.click();
    }


    @And("^check that name of organization in grid employees is \"([^\"]*)\"$")
    public void checkThatNameOfOrganizationInGridEmployeesIs(String nameOfOrganization) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement employees : tableNameOfOrganization) {
            Assert.assertEquals(nameOfOrganization, employees.toString().substring(4, 4 + nameOfOrganization.length()) );
        }
    }

    @And("^click to first name of organization in filtr employees$")
    public void clickToFirstNameOfOrganizationInFiltrEmployees() {
        firstOrganization.click();
    }


    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" in filtr employees$")
    public void typeToInputTextInFiltrInFiltrEmployees(String value, String filtrName) {
        $(By.xpath("//*[@id='menu-filter']/div/div[4]//label[.='" + filtrName + "']/..//input")).clear();
        $(By.xpath("//*[@id='menu-filter']/div/div[4]//label[.='" + filtrName + "']/..//input")).sendKeys(value);

    }


    @And("^click to fieldSubdivision in filtr employees$")
    public void clickToFieldSubdivisionInFiltrEmployees() {
        fieldNameOfSubdivision.click();
    }


    @And("^click to fieldPosition in filtr employees$")
    public void clickToFieldPositionInFiltrEmployees() {
        fieldPosition.click();
    }


    @And("^check that position in grid employees is \"([^\"]*)\"$")
    public void checkThatPositionInGridEmployeesIs(String position) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement employees : tablePosition) {
            Assert.assertEquals(position, employees.toString().substring(4, 4 + position.length()));
        }
    }

    @And("^click to field Registration in filtr employees$")
    public void clickToFieldRegistrationInFiltrEmployees() {
        fieldRegisratedInMobileAp.click();
    }

    @And("^type to input text \"([^\"]*)\" in fieldRegistration$")
    public void typeToInputTextInFieldRegistration(String text) {
        textBoxRegisratedInMobileAp.sendKeys(text);
    }

    @And("^click to first registration in filtr employees$")
    public void clickToFirstRegistrationInFiltrEmployees() {
        firstRegistrated.click();
    }

    @And("^check that outside system in card of employees is \"([^\"]*)\"$")
    public void checkThatOutsideSystemInCardOfEmployeesIs(String text) {
        outsideSystem.shouldHave(Condition.text(text));
    }

    @And("^check that fio in grid of employees is \"([^\"]*)\"$")
    public void checkThatFioInGridOfEmployeesIs(String fio) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement employees : tableFio) {
            Assert.assertEquals(fio, employees.toString().substring(4, 4 + fio.length()) );
        }
    }

    @And("^check that subdivision in grid employees is \"([^\"]*)\"$")
    public void checkThatSubdivisionInGridEmployeesIs(String nameOfSubdivision) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement employees : tableNameOfSubdivision) {
            employees.shouldHave(text(nameOfSubdivision));
        }
    }

    @And("^click to first position with text \"([^\"]*)\" in filtr employees$")
    public void clickToFirstPositionWithTextInFiltrEmployees(String position) {
        firstPosition.shouldHave(attribute("title", position)).click();
    }

    @And("^click to first subdivision in filtr employees$")
    public void clickToFirstSubdivisionInFiltrEmployees() {
        firstSubdivision.exists();
        firstSubdivision.click();
    }
}





