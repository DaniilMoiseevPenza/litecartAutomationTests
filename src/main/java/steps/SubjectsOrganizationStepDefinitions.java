package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.executeJavaScript;
import static pages.SubjectsOrganizationPage.*;

public class SubjectsOrganizationStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in card of subjects$")
    public void checkThatElementWithNameIsDisplayedInCardOfSubjects(String fieldName) {
        if (fieldName.equals("Создание") || fieldName.equals("Новая запись"))
            $(By.xpath("//aside[@class='request-view']//span[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
        else if (fieldName.equals("Контакты") || fieldName.equals("Системная информация") || fieldName.equals("Реквизиты"))
            $(By.xpath("//div[@class='toggle-block__header']//span[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
        else if (fieldName.equals("Unad"))
            $(By.xpath("//div[@class='form-builder info']//div[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
        else
            $(By.xpath("//div[@class='form-builder info']//td[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
    }

    @And("^check that button with text \"([^\"]*)\" is displayed in card of subjects$")
    public void checkThatButtonWithTextIsDisplayedInCardOfSubjects(String buttonName) {
        if (buttonName.equals("Редактировать"))
            $(By.xpath("//div[@class='form-builder info']//button[contains(text(),'" + buttonName + "')]")).shouldBe(visible);
        else
            $(By.xpath("//div[@class='card__footer']//span[contains(text(),'" + buttonName + "')]")).shouldBe(visible);
    }

    @And("^scroll to by mailing address$")
    public Void scrollToByMailingAddress() {
        return executeJavaScript("arguments[0].scrollIntoView(true);", fieldMailingAddress);
    }

    @And("^check that element create is displayed$")
    public void checkThatElementCreateIsDisplayed() {
        buttonCreate.shouldBe(visible);

    }

    @And("^check that element fieldSearchSubjects is displayed$")
    public void checkThatElementFieldSearchSubjectsIsDisplayed() {
        fieldSearchSubjects.shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in grid of subjects$")
    public void checkThatElementWithNameIsDisplayedInGridOfSubjects(String text)   {
        $(By.xpath("//div[@class='grid']//div[contains(text(), '" + text + "')]")).shouldBe(visible);
    }

    @And("^check next subject is disabled$")
    public void checkNextSubjectIsDisabled() {
        nextSubject.shouldBe(disabled);
    }

    @And("^check prev subject is disabled$")
    public void checkPrevSubjectIsDisabled() {
        prevSubject.shouldBe(disabled);
    }

    @And("^check collapse subject is displayed$")
    public void checkCollapseSubjectIsDisplayed() {
        collapseSubject.shouldBe(visible);
    }

    @And("^click to collapse subjects$")
    public void clickToCollapseSubjects() {
        collapseSubject.click();
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in card of subjects$")
    public void checkThatElementWithNameIsNotDisplayedInCardOfSubjects(String fieldName) {
        if (fieldName.equals("Создание") || fieldName.equals("Новая запись"))
            $(By.xpath(" //aside[@class='request-view']//span[contains(text(),'" + fieldName + "')]")).shouldNotBe(visible);
        else if (fieldName.equals("Контакты") || fieldName.equals("Системная информация") || fieldName.equals("Реквизиты"))
            $(By.xpath("//div[@class='toggle-block__header']//span[contains(text(),'" + fieldName + "')]")).shouldNotBe(visible);
        else
            $(By.xpath("//div[@class='form-builder info']//td[contains(text(),'" + fieldName + "')]")).shouldNotBe(visible);
    }

    @And("^click to expand subjects$")
    public void clickToExpandSubjects() {
        expandSubject.click();
    }

    @And("^click to collapse block contacts$")
    public void clickToCollapseBlockContacts() {
        expandAndCollapseBlockContacts.click();
    }

    @And("^click to collapse block requisits$")
    public void clickToCollapseBlockRequisits() {
        expandAndCollapseBlockRequisits.click();
    }

    @And("^click to collapse block system information$")
    public void clickToCollapseBlockSystemInformation() {
        expandAndCollapseBlockSystemInformation.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in filtr organization$")
    public void checkThatElementWithNameIsDisplayedInFiltrOrganization(String fieldName) {
        $(By.xpath("//div[@id='menu-filter']//label[contains(text(),'" + fieldName + "')]")).shouldBe(visible);
    }

    @And("^check that button with name \"([^\"]*)\" is displayed in filtr subjects$")
    public void checkThatButtonWithNameIsDisplayedInFiltrSubjects(String buttonName)   {
        $(By.xpath("//div[@id='menu-filter']//button[contains(text(),'" + buttonName + "')]")).shouldBe(visible);
    }

    @And("^click button with text \"([^\"]*)\" in filtr subjects$")
    public void clickButtonWithTextInFiltrSubjects(String buttonName) {
        $(By.xpath("//div[@id='menu-filter']//button[contains(text(),'" + buttonName + "')]")).click();
    }

    @And("^click to fieldInn in filtr organization$")
    public void clickToFieldInnInFiltrOrganization() {
        fieldInn.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtr \"([^\"]*)\" in filtr organization$")
    public void typeToInputTextInFiltrInFiltrOrganization(String value, String filtrName)   {
        if (filtrName.equals("ИНН")) {
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//input")).clear();
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//input")).sendKeys(value);
        } else {
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//div/input")).clear();
            $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'" + filtrName + "')]/..//div/input")).sendKeys(value);
        }
    }

    @And("^check that inn grid organization is \"([^\"]*)\"$")
    public void checkThatInnGridOrganizationIs(String text)   {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement district : tableInn) {
            Assert.assertEquals(text,district.getText().substring(2, 15));
        }
    }

    @And("^check that role in grid organization is \"([^\"]*)\"$")
    public void checkThatRoleInGridOrganizationIs(String text) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement district : tableRole) {
            Assert.assertEquals(text, district.getText().substring(4, 16));
        }
    }

    @And("^click to fieldRole in filtr organization$")
    public void clickToFieldRoleInFiltrOrganization() {
        filtrRole.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrRoleOrganization$")
    public void typeToInputTextInFiltrRoleOrganization(String value) {
        filtrTextBoxRole.sendKeys(value);
    }

    @And("^click to first role in filtrRoleOrganization$")
    public void clickToFirstRoleInFiltrRoleOrganization() {
        filtrFirstRole.click();
    }

    @And("^click to fieldKindOfActivity in filtr organization$")
    public void clickToFieldKindOfActivityInFiltrOrganization() {
        filtrTypeOfRequest.click();
    }

    @And("^click to first type of request in filtrTypeOfRequestOrganization$")
    public void clickToFirstTypeOfRequestInFiltrTypeOfRequestOrganization() {
        filtrFirstTypeOfRequest.click();
    }

    @And("^click to first organization in grid$")
    public void clickToFirstOrganizationInGrid() {
        paginationSubjects.waitUntil(visible, 10000);
        firstString.click();
    }

    @And("^click button with text \"([^\"]*)\" in card of subjects$")
    public void clickButtonWithTextInCardOfSubjects(String buttonName) {
        $(By.xpath("//div[@class='card']//button[contains(text(),'" + buttonName + "')]")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form update of business role$")
    public void checkThatElementWithNameIsDisplayedInFormUpdateOfBusinessRole(String name) {
        formUpdateOBusinessRole.shouldHave(text(name));
    }

    @And("^click to deffects$")
    public void clickToDeffects() {
        comboBoxDeffects.click();
    }

    @And("^click to open comboBox category$")
    public void clickToOpenComboBoxCategory() {
        comboBoxCategory.click();
    }

    @And("^check that element with name \"([^\"]*)\" is checked$")
    public void checkThatElementWithNameIsChecked(String name) {
        $(By.xpath("//span[@title='" + name + "']/../span")).shouldHave(attribute("ant-tree-checkbox ant-tree-checkbox-checked"));
    }

    @And("^click to close form update business role$")
    public void clickToCloseFormUpdateBusinessRole() {
        formUpdateBusinessRoleButtonClose.click();
    }

    @And("^click filter of subjects$")
    public void clickFilterOfSubjects() {
        buttonFilterOfSubjects.click();
    }

    @And("^type to input text \"([^\"]*)\" in filtrKindOfActivity$")
    public void typeToInputTextInFiltrKindOfActivity(String nameActivity) {
        filtrTypeOfRequestWriteText.sendKeys(nameActivity);
    }

    @And("^type to input with fieldSearchSubjects text: \"([^\"]*)\"$")
    public void typeToInputWithFieldSearchSubjectsText(String text) {
        fieldSearchSubjects.clear();
        fieldSearchSubjects.sendKeys(text);
    }


    @And("^click buttonFind$")
    public void clickButtonFind() {
        buttonFindSubjects.click();
    }


    @And("^check that field full name in card of organization is \"([^\"]*)\"$")
    public void checkThatFieldFullNameInCardOfOrganizationIs(String name)   {
        $(By.xpath("//div[@class='card']//td[.='Полное наименование *']/../td[2]/input[@value='" + name + "']")).shouldBe(visible);
    }

    @And("^check expand subject is displayed$")
    public void checkExpandSubjectIsDisplayed() {
        expandSubject.shouldBe(visible);
    }
}