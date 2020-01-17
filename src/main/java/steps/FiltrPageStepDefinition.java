package steps;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.waiter;
import static pages.FiltrDispatcherCentrPage.*;
import static pages.FiltrDispatcherCentrPage.tableColumm1Value2;

public class FiltrPageStepDefinition {


    @And("^check that column \"([^\"]*)\" is \"([^\"]*)\"$")
    public void checkThatColumnIs(String columnName, String value) {
        waiter.waitUntil(not(visible), 10000);
        ElementsCollection columnData;
        $(By.xpath("//*[@class='react-grid-HeaderCell']/div[.='" + columnName + "']")).shouldHave(text(columnName));
        if (columnName.equals("Исполнитель")) {
            columnData = $$(By.xpath("//div[@class='react-grid-Cell__value']/div/span/div/span"));
        } else {
            columnData = $$(By.xpath("//div[@class='react-grid-Cell__value']//*[contains(text(),'" + value + "') or contains(text(),'" + value.toLowerCase() + "')]"));
        }
        if (columnName.equals("Телефон основной") || columnName.equals("Приоритет") || columnName.equals("ОДС")) {
            Assert.assertEquals(value.toLowerCase(),columnData.get(0).toString().toLowerCase().substring(6, 6 + columnData.get(0).getText().length()));
            for (int i = 0; i < columnData.size(); i++) {
                Assert.assertEquals(value.toLowerCase(), columnData.get(i).toString().toLowerCase().substring(6, 6 + columnData.get(i).getText().length()));
            }
        } else {
            if (columnName.equals("Контактное лицо") || columnName.equals("Исполнитель")) {
                columnData.get(0).shouldHave(text(value));
                for (int i = 0; i < columnData.size(); i++) {
                    columnData.get(i).shouldHave(text(value));
                }
            } else {
                Assert.assertEquals(value.toLowerCase(), columnData.get(0).toString().toLowerCase().substring(12, 12 + columnData.get(0).getText().length()));
                for (int i = 0; i < columnData.size(); i++) {
                    Assert.assertEquals(value.toLowerCase(), columnData.get(i).toString().toLowerCase().substring(12, 12 + columnData.get(i).getText().length()));
                }

            }

        }
    }
// else {
//            Assert.assertEquals(columnData.get(0).toString().toLowerCase().substring(6, 6 + value.length()), value.toLowerCase());
//            for (int i = 0; i < columnData.size(); i = i + 2) {
//                Assert.assertEquals(columnData.get(i).toString().toLowerCase().substring(6, 6 + value.length()), value.toLowerCase());
//            }
//        }
//
//    }

    @And("^check that column \"([^\"]*)\" is \"([^\"]*)\" in filtrConsultation$")
    public void checkThatColumnIsInFiltrConsultation(String columnName, String value) {
        $(By.xpath("//*[@class='react-grid-HeaderCell']/div[.='" + columnName + "']")).shouldHave(text(columnName));
        for (SelenideElement column1 : tableColumm1Value2) {
            Assert.assertEquals( value.toLowerCase(), column1.toString().toLowerCase().substring(6, 6 + value.length()));
        }
    }

}








