package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class NoticePage {
    private NoticePage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating NoticePage class.");
    }
    //Кнопка ОК в Уведомлении о активных заявках
    public static final SelenideElement buttonNoticeOk = $(By.xpath("//*[@id=\"root\"]/div/div[2]/section/footer/button"));
}
