package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ProductInformationPage {

    //Цена продукта
    public final static SelenideElement productPrice = $(By.xpath("//*[@itemprop='price']"));
    // Количество продукта
    public final static SelenideElement productQuantity = $(By.xpath("//*[@class='stock-status']//span"));
    // Размер продукта
    public final static SelenideElement productSize = $(By.name("options[Size]"));
    // Размер продукта
    public final static SelenideElement productCode = $(By.xpath("//*[@itemprop='sku']"));
    // Название продукта
    public final static SelenideElement productName = $(By.xpath("//*[@itemprop='name']"));

}
