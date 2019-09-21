package ru.litecart.steps;

import cucumber.api.java.en.And;
import static com.codeborne.selenide.Condition.attribute;
import static ru.litecart.pages.CartPage.cartStopScrolling;

public class CartSteps {

    @And("^wait page stop scrolling$")
    public void waitPageStopScrolling() throws Throwable {
        cartStopScrolling.waitUntil(attribute("style","opacity: 1;"),5000);
    }
}
