package pages;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class CartPage {
    //Элемент стиля, когда в корзине не происходит движения страницы после изменения данных
    public static final SelenideElement cartStopScrolling = $(By.id("checkout-cart-wrapper"));
    //Список продуктов
    public static final ElementsCollection productsOrder = $$(By.xpath("//*[@class='quantity']/../..//td[@class='item']/.."));
    //Общая стоимость
    public static final SelenideElement commonPrice = $(By.xpath("//*[@class='footer']//strong[not(contains(text(),'Payment Due:'))]"));

}
