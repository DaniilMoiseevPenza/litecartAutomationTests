package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ViewModalCardOfConsultationPage {
    private ViewModalCardOfConsultationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewModalCardOfConsultationPage class.");
    }


    //кнопка Закрыть модальное окно консультации
    public static final SelenideElement closeModalCardOfConsultation = $(By.xpath("//div[@id='view-consultation']//div[@class='close-button']"));
    //скролл к полю По заявке
    public static final SelenideElement scrollToByRequestInModalCardOfConsultation = $(By.xpath("//div[@id='view-consultation']//*[contains(text(),'По заявке')]"));
    //Модальное окно консультации (пиктограмма проблемности консультаций в заголовке)
    public static final SelenideElement modalCardOfConsultationPictogramm = $(By.xpath("//div[@id='view-consultation']//div/div"));


}
