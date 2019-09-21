package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static com.codeborne.selenide.CollectionCondition.size;
import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static pages.CartPage.cartStopScrolling;
import static utils.actionUtils.scrollTo;

public class CartSteps {

    @And("^wait page stop scrolling$")
    public void waitPageStopScrolling() throws Throwable {
        cartStopScrolling.waitUntil(attribute("style","opacity: 1;"),5000);
    }


    @When("^set text \"([^\"]*)\" in field \"([^\"]*)\"$")
    public void setTextInField(String text, String field) throws Throwable {
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).clear();
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).setValue(text);
    }


    @And("^check that we buy <(\\d+)> \"([^\"]*)\"$")
    public void checkThatWeBuy(int count, String productName) throws Throwable {
            $$(By.xpath("//*[contains(text(),'Product')]/../..//*[contains(text(),'"+productName+"')]")).shouldHave(size(count));
    }

    @And("^scroll to element with text \"([^\"]*)\"$")
    public void scrollToElementWithText(String text) throws Throwable {
        scrollTo($(By.xpath("//button[contains(text(),'"+text+"')]")));
    }
}
