package steps;

import com.codeborne.selenide.Configuration;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static utils.actionUtils.scrollTo;

public class StartPageSteps {

    @Given("^open start page$")
    public void openStartPage() throws Throwable  {
       // setTestRunSetup();
        open(Configuration.baseUrl);

    }

    @When("^click on duck with name \"([^\"]*)\"$")
    public void clickOnDuckWithName(String duckName) throws Throwable {
        scrollTo($(By.xpath("//a[@title='"+duckName+"']/..")));
        $(By.xpath("//a[@title='"+duckName+"']/..")).click();
    }

    @Then("^check that count in cart \"([^\"]*)\"$")
    public void checkThatCountInCart(String count) throws Throwable {
        $(By.xpath("//span[@class='quantity']")).shouldHave(text(count));
    }
}
