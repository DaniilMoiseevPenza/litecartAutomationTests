package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;

import static com.codeborne.selenide.Condition.not;
import static com.codeborne.selenide.Condition.visible;
import static pages.DispatcherCentrPage.*;

public class SearchOnNumberRequestStepDefinitions {


    @And("^click fieldSearchOnNumberRequest in startPage$")
    public void clickFieldSearchOnNumberRequestInStartPage() {
        search.click();
    }

    @And("^type to input with name searchOnNumberRequest text: \"([^\"]*)\"$")
    public void typeToInputWithNameSearchOnNumberRequestText(String searchOnNumberRequest) {
        search.clear();
        search.sendKeys(searchOnNumberRequest);
    }

    @And("^check that number request in grid is \"([^\"]*)\"$")
    public void checkThatNumberRequestInGridIs(String fieldSearchOnNumberRequest) {
        for (SelenideElement status : columnNumberOfRequest) {
            Assert.assertEquals(fieldSearchOnNumberRequest, status.toString().substring(6, 6 + fieldSearchOnNumberRequest.length()));
        }
    }

    @And("^click button findRequest$")
    public void clickButtonFindRequest() {
        waiter.waitUntil(not(visible), 10000);
        find.click();
    }
}

