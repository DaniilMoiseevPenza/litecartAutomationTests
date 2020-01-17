package steps;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.SubjectsOrganizationPage.*;
import static pages.SubjectsServiceAddressesPage.*;

public class SubjectsServiceAddressesStepDefinitions {


    @And("^check that element create is not displayed$")
    public void checkThatElementCreateIsNotDisplayed() {
        buttonCreate.shouldNotBe(visible);

    }

    @And("^check that element fieldSearchAddresses is displayed$")
    public void checkThatElementFieldSearchAddressesIsDisplayed() {
        fieldSearchAddresses.shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in filtr serviceAddresses$")
    public void checkThatElementWithNameIsDisplayedInFiltrServiceAddresses(String filtrName) {
        $(By.xpath("//*[@id='menu-filter']//div[5]//label[contains(text(),'" + filtrName + "')]")).shouldBe(Condition.visible);
    }

    @And("^click to fieldRegion in filtrServiseAddresses$")
    public void clickToFieldRegionInFiltrServiseAddresses() {
        fieldRegionInServiceAddresses.click();
    }

    @And("^type to input \"([^\"]*)\" in filtr \"([^\"]*)\" in filtrServiceAddresses$")
    public void typeToInputInFiltrInFiltrServiceAddresses(String value, String filtrName) {
        $(By.xpath("//div[@id='menu-filter']//div[5]//label[.='" + filtrName + "']/..//input")).clear();
        $(By.xpath("//div[@id='menu-filter']//div[5]//label[.='" + filtrName + "']/..//input")).sendKeys(value);
    }

    @And("^check that region in card of address is \"([^\"]*)\"$")
    public void checkThatRegionInCardOfAddressIs(String region) {
        fieldRegionInCardOfAddress.shouldHave(text(region)).isDisplayed();
        for (SelenideElement address : tableIdAddress) {
            address.click();

        }
    }

    @And("^click to fieldDistrict in filtrServiseAddresses$")
    public void clickToFieldDistrictInFiltrServiseAddresses() {
        fieldDistrictInServiceAddresses.click();
    }

    @And("^type to input \"([^\"]*)\" in fieldDistrictInServiceAddresses$")
    public void typeToInputInFieldDistrictInServiceAddresses(String district) {
        textboxDistrictInServiceAddresses.sendKeys(district);

    }

    @And("^check that district in card of address is \"([^\"]*)\"$")
    public void checkThatDistrictInCardOfAddressIs(String district) {
        fieldDistrictInCardOfAddress.shouldHave(text(district)).isDisplayed();
        for (SelenideElement address : tableIdAddress) {
            address.click();
        }
    }

    @And("^click to fieldNameOfOrganization in filtrServiseAddresses$")
    public void clickToFieldNameOfOrganizationInFiltrServiseAddresses() {
        fieldNameOfOrganization.click();
    }

    @And("^type to input \"([^\"]*)\" in fieldNameOfOrganizationInServiceAddresses$")
    public void typeToInputInFieldNameOfOrganizationInServiceAddresses(String organization) {
        fieldNameOfOrganization.sendKeys(organization);
    }

    @And("^click first organization with text \"([^\"]*)\"$")
    public void clickFirstOrganizationWithText(String organization) {
        $(By.xpath("//li[.= '" + organization + "']")).click();
    }

    @And("^check that organization in grid addresses is \"([^\"]*)\"$")
    public void checkThatOrganizationInGridAddressesIs(String nameOfOrganization) {
        paginationSubjects.waitUntil(visible, 10000);
        for (SelenideElement organization : tableUk) {
            Assert.assertEquals(nameOfOrganization,organization.toString().substring(6, 6 + nameOfOrganization.length()));
        }
    }
}


