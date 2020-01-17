package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ViewFormOfMagazineNoticePage {
    private ViewFormOfMagazineNoticePage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewFormOfMagazineNoticePage class.");
    }


    //Первый номер заявки на странице журнал уведомлений
    public static final SelenideElement firstNumberRequestFormOfMagazineNotice = $(By.xpath("//div[@class='react-grid-Viewport']//span"));
}
