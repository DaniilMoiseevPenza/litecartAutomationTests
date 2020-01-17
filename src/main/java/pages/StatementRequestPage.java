package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;


public class StatementRequestPage {
    private StatementRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating StatementRequestPage class.");
    }

    //кнопка Экспорт
    public static final SelenideElement buttonExportInFormStatement = $(By.xpath("//span[.='Выводить на бланке с подписью']//..//..//..//..//..//button"));
    //чекбокс Выводить на бланке с подписью
    public static final SelenideElement checkboxShowOnBlankWithSignature = $(By.xpath("//*[@id='feedback']/div[2]/div[2]/div[1]/div/label/span[1]/input"));
    //закрытие формы выписки
    public static final SelenideElement closeToFormStatement = $(By.xpath("//div[@class='feedback-panel']//span[.='Выводить на бланке с подписью']//..//..//..//..//..//div[@class='close-button']"));
    //заголовок дополнительно
    public static final SelenideElement additionaly = $(By.xpath("//div[@class='feedback-panel']//span[.='Выводить на бланке с подписью']"));


}
