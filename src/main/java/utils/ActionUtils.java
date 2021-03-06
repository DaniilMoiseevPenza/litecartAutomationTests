package utils;

import com.codeborne.selenide.SelenideElement;

import static com.codeborne.selenide.Selenide.executeJavaScript;

public class ActionUtils {

    public static Object scrollTo(SelenideElement element) {
        return executeJavaScript("arguments[0].scrollIntoView(true);", element);
    }

}
