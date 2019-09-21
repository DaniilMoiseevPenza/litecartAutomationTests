package ru.litecart.pages;

import com.codeborne.selenide.SelenideElement;
import static com.codeborne.selenide.Selenide.$;
import org.openqa.selenium.By;

public class StartPage {

    private StartPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating StartPage class.");
    }
    public static final SelenideElement Login = $(By.xpath("//*[@class=\'title\'][contains(text(),\'Login\')]"));
}
