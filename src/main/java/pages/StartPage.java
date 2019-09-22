package pages;

import com.codeborne.selenide.SelenideElement;
import static com.codeborne.selenide.Selenide.$;
import org.openqa.selenium.By;

public class StartPage {

    //Элемент когда в корзине больше 0 покупок
    public static final SelenideElement cartMoreZero = $(By.xpath("//span[@class='quantity' and not(contains(text(),'0'))]"));
    //Количество продуктов в корзине
    public static final SelenideElement countCart = $(By.xpath("//span[@class='quantity']"));
    //Кнопка домой
    public static final SelenideElement homeButton = $(By.xpath("//*[@class='fa fa-home']"));
}
