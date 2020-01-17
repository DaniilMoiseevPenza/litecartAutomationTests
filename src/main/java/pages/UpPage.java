package pages;
import com.codeborne.selenide.SelenideElement;

import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.$;


public class UpPage {
    private UpPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating UpPage class.");
    }

    //Кнопка Поддержка (при скрытом меню поддержки)
    public static final SelenideElement supportToOpen = $(byTitle("Поддержка"));
    //Кнопка Поддержка (при раскрытом меню поддержки)
    //  public static final  SelenideElement supportToClose = $(By.id("#help-btn"));


}
