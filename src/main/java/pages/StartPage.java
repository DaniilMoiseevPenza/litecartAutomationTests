package pages;

import com.codeborne.selenide.SelenideElement;

import static com.codeborne.selenide.Selenide.$;

import org.openqa.selenium.By;

public class StartPage {

    //Количество продуктов в корзине
    public static final SelenideElement countCart = $(By.xpath("//span[@class='quantity']"));
}
