package steps;


import com.codeborne.selenide.Condition;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static pages.ViewFormOfMagazineNoticePage.firstNumberRequestFormOfMagazineNotice;

public class ViewFormOfMagazineNoticeStepDefinitions {


    @And("^click first number of request on form magazine of notice$")
    public void clickFirstNumberOfRequestOnFormMagazineOfNotice() {
        firstNumberRequestFormOfMagazineNotice.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in magazineNotice$")
    public void checkThatElementWithNameIsDisplayedInMagazineNotice(String fieldName) {
        $(By.xpath("//div[@class='react-grid-Header']//*[contains(text(),'" + fieldName + "')]")).shouldBe(Condition.visible);
    }
}
