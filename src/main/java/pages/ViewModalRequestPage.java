package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ViewModalRequestPage {
    private ViewModalRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewModalRequestPage class.");
    }

    //кнопка Закрыть модальное окно заявки
    public static final SelenideElement closeModalCardOfRequest = $(By.xpath("//div[@id='view-request']/div/div"));
    //Надпись Просмотр заявки №
    public static final SelenideElement requestNumberInModalWindow = $(By.xpath("//*[@id=\"view-request\"]/div[1]"));
    //Поле Дополнительный телефон
    public static final SelenideElement fieldAdditionalPhoneInModalWindow = $(By.xpath("//div[@id='view-request']//td[contains(text(),'Дополнительный телефон')]"));
    //Поле Адрес
    public static final SelenideElement fieldAddressInModalWindow = $(By.xpath("//div[@id='view-request']//td[contains(text(),'Адрес ')]"));
    //Поле Оставить комментарий
    public static final SelenideElement fieldAddCommentInWindow = $(By.xpath("//div[@id='view-request']//td[contains(text(),'Оставить комментарий')]"));

}

