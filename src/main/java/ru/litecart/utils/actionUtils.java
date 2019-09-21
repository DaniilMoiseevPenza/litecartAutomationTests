package ru.litecart.utils;

import com.codeborne.selenide.WebDriverRunner;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import static com.codeborne.selenide.Selenide.executeJavaScript;

public class actionUtils {

    public static Object scrollTo(SelenideElement element)
    {
        return executeJavaScript("arguments[0].scrollIntoView(true);", element);
    }

}
