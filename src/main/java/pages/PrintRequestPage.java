package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byAttribute;
import static com.codeborne.selenide.Selenide.$;

public class PrintRequestPage {
    private PrintRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating PrintRequestPage class.");
    }

    //Кнопка Выйти
    public static final SelenideElement exitButtonPrintRequest = $(By.xpath("//div[@class='print-request']//*[@class='close-button']"));
    //Сообщение
    public static final SelenideElement notification = $(byAttribute("class", "closeable-timed-notification"));


}
