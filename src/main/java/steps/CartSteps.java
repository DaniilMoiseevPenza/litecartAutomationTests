package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.apache.logging.log4j.core.util.Assert;
import org.openqa.selenium.By;
import pages.CartPage;

import java.util.ArrayList;

import static com.codeborne.selenide.CollectionCondition.size;
import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static pages.CartPage.cartStopScrolling;
import static pages.CartPage.deleteButton;
import static pages.CartPage.productsOrder;
import static pages.StartPage.countCart;
import static pages.StartPage.homeButton;
import static steps.GeneralSteps.clickTextWithName;
import static steps.ProductInformationSteps.getProducts;
import static utils.actionUtils.scrollTo;

public class CartSteps {

    @And("^wait page stop scrolling$")
    public void waitPageStopScrolling() throws Throwable {
        cartStopScrolling.waitUntil(attribute("style","opacity: 1;"),5000);
    }


    @When("^set text \"([^\"]*)\" in field \"([^\"]*)\"$")
    public void setTextInField(String text, String field) throws Throwable {
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).click();
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).clear();
        $(By.xpath("//td[contains(text(),'"+field+"')]//input")).setValue(text);
    }

    @And("^scroll to element with text \"([^\"]*)\"$")
    public void scrollToElementWithText(String text) throws Throwable {
        scrollTo($(By.xpath("//button[contains(text(),'"+text+"')]")));
    }

    @And("^check information in order$")
    public void checkInformationInOrder() throws Throwable {
        String[] productOrder;
        Double commonPrice=0.0;
        ArrayList g = getProducts();
        for(int i=0;i<productsOrder.size();i++) {
            productOrder = productsOrder.get(i).getText().split(" ");
            assertTrue( getProducts().get(i).getProductName().equals(productOrder[1]+" "+productOrder[2]),
                    "Имена не совпадают");
            assertTrue(getProducts().get(i).getQuantityToBuy()== Integer.parseInt(productOrder[0]),
                    "Не совпадает количетсво покупаемых товаров:"+getProducts().get(i).getQuantityToBuy()+" "+Integer.parseInt(productOrder[0]));
            if(getProducts().get(i).getSize().equals("none"))
            assertTrue( getProducts().get(i).getCode().equals(productOrder[3]),
                    "Код не совпадает");
            else {
                String h = productOrder[3];
                String j = getProducts().get(i).getCode() + "-" + getProducts().get(i).getSize().charAt(0);
                assertTrue(productOrder[3].
                                equals(getProducts().get(i).getCode() + "-" + getProducts().get(i).getSize().charAt(0)),
                        "Код или размер не совпадает:" + productOrder[3] + " " + getProducts().get(i).getCode() + "-" + getProducts().get(i).getSize().charAt(0));
            }
            assertTrue( getProducts().get(i).getPrice()==
                            Double.parseDouble(productOrder[4].substring((productOrder[4].lastIndexOf("$") + 1))),
                    "Стоимость не совпадают");
            commonPrice+=Double.parseDouble(productOrder[6].substring((productOrder[6].lastIndexOf("$") + 1)));
            assertTrue( getProducts().get(i).getPrice()*getProducts().get(i).getQuantityToBuy()==
                            Double.parseDouble(productOrder[6].substring((productOrder[6].lastIndexOf("$") + 1))),
                    "Общая стоимость позиции не совпадают");
        }
        assertTrue( commonPrice==
                        Double.parseDouble(CartPage.commonPrice.getText().substring(CartPage.commonPrice.getText().lastIndexOf("$") + 1)),
                "Общая стоимость не совпадают");
        getProducts().clear();
    }

    @And("^clear cart if it not null$")
    public void clearCartIfItNotNull() throws Throwable {
        if(!countCart.getText().equals("0"))
        {
            clickTextWithName("Checkout »");
            while(deleteButton.isDisplayed())
            {
                deleteButton.click();
            }
            clickTextWithName("<< Back");
        }

    }
}
