package steps;

import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import entities.Product;
import org.openqa.selenium.By;
import pages.CartPage;

import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static pages.CartPage.cartStopScrolling;
import static pages.CartPage.deleteButton;
import static pages.CartPage.productsOrder;
import static pages.StartPage.countCart;
import static steps.GeneralSteps.clickTextWithName;
import static steps.ProductInformationSteps.getProducts;
import static utils.StringUtils.getStringAfterChar;
import static utils.ActionUtils.scrollTo;

public class CartSteps {

    @And("^wait page stop scrolling$")
    public void waitPageStopScrolling() throws Throwable {
        cartStopScrolling.waitUntil(attribute("style", "opacity: 1;"), 5000);
    }


    @When("^set text \"([^\"]*)\" in field \"([^\"]*)\"$")
    public void setTextInField(String text, String field) throws Throwable {
        SelenideElement textField = $(By.xpath("//td[contains(text(),'" + field + "')]//input"));
        textField.click();
        textField.clear();
        textField.setValue(text);
    }

    @And("^scroll to element with text \"([^\"]*)\"$")
    public void scrollToElementWithText(String text) throws Throwable {
        scrollTo($(By.xpath("//button[contains(text(),'" + text + "')]")));
    }

    @And("^check information in order$")
    public void checkInformationInOrder() throws Throwable {
        String[] productOrder;
        Double commonPrice = 0.0;
        //Для каждой пришедшей строки из заказа ищем соответсвие среди добавляемых продуктов
        for (int i = 0; i < productsOrder.size(); i++) {
            productOrder = productsOrder.get(i).getText().split(" ");
            for (Product pr : getProducts()) {
                //Если код продуктов совпадает начинаем проверку
                if (productOrder[3].equals(pr.getOrderCode())) {
                    //Проверка имена продукта который был добавлен с именем в заказе
                    assertTrue(pr.getProductName().equals(productOrder[1] + " " + productOrder[2]),
                            "Имена не совпадают");
                    //Проверка количество продуктов которые был добавлены с количеством в заказе
                    assertTrue(pr.getQuantityToBuy() == Integer.parseInt(productOrder[0]),
                            "Не совпадает количетсво покупаемых товаров");
                    //Проверка стоимости продукта который был добавлен со стоимостью в заказе
                    assertTrue(pr.getPrice() == Double.parseDouble(getStringAfterChar(productOrder[4], '$')),
                            "Стоимость не совпадают");
                    //Суммирование стоимости всех заказанных продуктов
                    commonPrice += Double.parseDouble(getStringAfterChar(productOrder[4], '$'));
                    //Проверка общей стоимости заказа одной позиции
                    assertTrue(pr.getPrice() * getProducts().get(i).getQuantityToBuy() ==
                                    Double.parseDouble(getStringAfterChar(productOrder[4], '$')),
                            "Общая стоимость позиции не совпадают");
                }
            }
        }
        //Проверка общего счета за все продукты
        assertTrue(commonPrice ==
                        Double.parseDouble(getStringAfterChar(CartPage.commonPrice.getText(), '$')),
                "Общая стоимость не совпадают");
        //Очищение продуктов, которые были проверенны
        getProducts().clear();
    }

    @And("^clear cart if it not null$")
    public void clearCartIfItNotNull() throws Throwable {
        if (!countCart.getText().equals("0")) {
            clickTextWithName("Checkout »");
            while (deleteButton.isDisplayed()) {
                deleteButton.click();
            }
            open(Configuration.baseUrl);
        }

    }
}
