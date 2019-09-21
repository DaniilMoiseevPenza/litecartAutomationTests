package ru.litecart.pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class CartPage {
    //Элемент стиля, когда в корзине не происходит движения страницы после изменения данных
    public static final SelenideElement cartStopScrolling = $(By.id("checkout-cart-wrapper"));
}
