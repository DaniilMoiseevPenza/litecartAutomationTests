package steps;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.SubjectsOrganizationPage.*;
import static pages.SubjectsOrganizationPage.paginationSubjects;
import static pages.SubjectsSubdiivisionsPage.*;
import static pages.SubjectsSubdiivisionsPage.cardOfSubdivisionsFieldRole;
import static pages.SubjectsSubdiivisionsPage.fieldBusinessRole;
import static pages.SubjectsSubdiivisionsPage.fieldKindOfActivityTextbox;
import static pages.SubjectsSubdiivisionsPage.fieldNameOfHigherSubdivision;
import static pages.SubjectsSubdiivisionsPage.fieldNameOfOrganization;
import static pages.SubjectsSubdiivisionsPage.fieldRoleSubdivisions;
import static pages.SubjectsSubdiivisionsPage.fieldRoleSubdivisionsTextbox;
import static pages.SubjectsSubdiivisionsPage.fieldTypeOfRequestInFiltrSubdivisions;
import static pages.SubjectsSubdiivisionsPage.filtrFirstNameOfHighSubdivision;
import static pages.SubjectsSubdiivisionsPage.filtrFirstNameOfOrganization;
import static pages.SubjectsSubdiivisionsPage.filtrFirstTypeOfRequestInSubdivisions;
import static pages.SubjectsSubdiivisionsPage.firstRoleSubdivisions;
import static pages.SubjectsSubdiivisionsPage.tableNameOfHigherSubdivision;
import static pages.SubjectsSubdiivisionsPage.tableNameOfOrganization;

public class SubjectsSubdivisionsStepdefinitions {


    @And("^scroll to by business role$")
    public Void scrollToByBusinessRole() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldBusinessRole);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in filtr subdivizions$")
    public void checkThatElementWithNameIsDisplayedInFiltrSubdivizions(String filtrName) {
        $(By.xpath("//div[3][@class='form-content']//label[contains(text(),'" + filtrName + "')]")).shouldBe(Condition.visible);
    }

    @And("^click to fieldNameOfOrganization in filtr subdivizions$")
    public void clickToFieldNameOfOrganizationInFiltrSubdivizions() {
        fieldNameOfOrganization.click();
    }

    @And("^check that name of organization in grid subdivizions is \"([^\"]*)\"$")
    public void checkThatNameOfOrganizationInGridSubdivizionsIs(String nameOfOrganization) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement organization : tableNameOfOrganization) {
            Assert.assertEquals(nameOfOrganization, organization.toString().substring(4, 4 + nameOfOrganization.length()));
        }
    }

    @And("^click to first name of organization in filtr subdivizions$")
    public void clickToFirstNameOfOrganizationInFiltrSubdivizions() {
        filtrFirstNameOfOrganization.click();
    }

    @And("^click to fieldHigherSubdivisions in filtr subdivisions$")
    public void clickToFieldHigherSubdivisionsInFiltrSubdivisions() {
        fieldNameOfHigherSubdivision.click();
    }

    @And("^click to first high subdivision in filtr subdivisions$")
    public void clickToFirstHighSubdivisionInFiltrSubdivisions() {
        filtrFirstNameOfHighSubdivision.click();
    }

    @And("^check that high subdivision in grid subdivisions is \"([^\"]*)\"$")
    public void checkThatHighSubdivisionInGridSubdivisionsIs(String highSubdivision) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement organization : tableNameOfHigherSubdivision) {
            Assert.assertEquals(highSubdivision,organization.toString().substring(4, 4 + highSubdivision.length()));
        }
    }

    @And("^click to fieldRole in filtr subjects$")
    public void clickToFieldRoleInFiltrSubjects() {
        fieldRoleSubdivisions.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrRoleSubdivisions$")
    public void typeToInputTextInFiltrRoleSubdivisions(String text) {
        fieldRoleSubdivisionsTextbox.sendKeys(text);
    }

    @And("^click to first role in filtrRoleSubdivisions$")
    public void clickToFirstRoleInFiltrRoleSubdivisions() {
        firstRoleSubdivisions.click();
    }


    @And("^check that role in card subdivisions is \"([^\"]*)\"$")
    public void checkThatRoleInCardSubdivisionsIs(String value) {
        cardOfSubdivisionsFieldRole.shouldHave(text(value));
    }

    @And("^click to fieldKindOfActivity in filtr subjects$")
    public void clickToFieldKindOfActivityInFiltrSubjects() {
        fieldTypeOfRequestInFiltrSubdivisions.click();
    }

    @And("^click to fieldRole in filtr subdivisions$")
    public void clickToFieldRoleInFiltrSubdivisions() {
        fieldRoleSubdivisions.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrKindOfActivitySubdivisions$")
    public void typeToInputTextInFiltrKindOfActivitySubdivisions(String kindOfActivity) {
        fieldKindOfActivityTextbox.sendKeys(kindOfActivity);
    }

    @And("^click to first type of request in filtrTypeOfRequestSubdivisions$")
    public void clickToFirstTypeOfRequestInFiltrTypeOfRequestSubdivisions() {
        filtrFirstTypeOfRequestInSubdivisions.click();
    }

    @And("^click to fieldHigherSubdivisions in filtr subdivizions$")
    public void clickToFieldHigherSubdivisionsInFiltrSubdivizions() {
        fieldNameOfHigherSubdivision.click();
    }
}
