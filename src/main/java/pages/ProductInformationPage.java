package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ProductInformationPage {

    //Цена продукта
    public static final SelenideElement productPrice = $(By.xpath("//*[@itemprop='price']"));
    // Количество продукта
    public static final SelenideElement productQuantity = $(By.xpath("//*[@class='stock-status']//span"));
    // Размер продукта
    public static final SelenideElement productSize = $(By.name("options[Size]"));
    // Размер продукта
    public static final SelenideElement productCode = $(By.xpath("//*[@itemprop='sku']"));
    // Название продукта
    public static final SelenideElement productName = $(By.xpath("//*[@itemprop='name']"));

}
