package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byAttribute;
import static com.codeborne.selenide.Selenide.$;

public class ExportRequestPage {
    private ExportRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ExportRequestPage class.");
    }

    //чекбокс выводить комментарии к заявке
    public static final SelenideElement checkboxshowCommentsrequest = $(By.cssSelector("#feedback > div.feedback-panel > div.feedback-content > div > div > label > span:nth-child(2)"));
    //закрытие формы выгрузки
    public static final SelenideElement closeToFormExport = $(By.xpath("//*[@id='feedback']/div[2]/div[1]/div"));
    //Первое уведомление о выгрузке,экспорте
    public static final SelenideElement notificationExport = $(byAttribute("class", "closeable-timed-notification"));
    //Первое уведомление о выгрузке,экспорте
    public static final SelenideElement notificationSecond = $(By.xpath("//div[@id='notification-container']//div[2]/div/div"));
    //модальное окно Дополнительно, надпись об ограничении записей
    public static final SelenideElement textAboutCountOfRequest = $(By.xpath("//div[2][@class='feedback-content']//div[3]"));


}
