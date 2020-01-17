package utils;

import com.codeborne.selenide.ElementsCollection;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$$;

public class ElementsUtils {

    public static void checkThatTextInElementInElementsCollection(String xpath,int elementNumber, String value)
    {
        returnElementsCollection($$(By.xpath(xpath))).get(elementNumber).shouldHave(text(value));
    }

    public static ElementsCollection returnElementsCollection(ElementsCollection elementsCollection)
    {
        return elementsCollection;
    }
}
