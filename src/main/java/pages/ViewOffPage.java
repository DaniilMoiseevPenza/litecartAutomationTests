package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;


public class ViewOffPage {
    private ViewOffPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewOffPage class.");
    }

    //Надпись Дата создания
    public static final SelenideElement nameDateCreate = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.card > div:nth-child(2) > div.info > div > table > tbody > tr:nth-child(1) > td.name"));
    //Вид отключения - аварийное
    public static final SelenideElement emergencyOff = $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Вид отключения')]/..//label/span"));
    //Вид отключения - плановое
    public static final SelenideElement plannedOff = $(By.xpath("//div[@class='disabling-view']//*[contains (text(), 'Вид отключения')]/..//label/span"));
    //кнопка Восстановить
    public static final SelenideElement buttonRestart = $(By.xpath("//div[@class='card']//*[contains(text(),'Восстановить')]"));
    //кнопка Сохранить
    public static final SelenideElement buttonSave = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.card > div:nth-child(2) > div.footer > button.save"));
    //кнопка Удалить
    public static final SelenideElement buttonDelete = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.card > div:nth-child(2) > div.footer > button:nth-child(1)"));
    //скролл к полю Причина удаления
    public static final SelenideElement scrollToFieldReasonOfDelete = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.card > div:nth-child(2) > div.info > div > table > tbody > tr:nth-child(10) > td.name"));
    //кнопка следующее отключение
    public static final SelenideElement buttonNextOff = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.btn-group > button.next"));
    //кнопка предыдущее отключение
    public static final SelenideElement buttonPrevOff = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.btn-group > button.prev"));
    //заголовок отключения
    public static final SelenideElement titleOff = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.btn-group > span"));
    //номер отключения
    public static final SelenideElement numberOff = $(By.cssSelector("#root > div > div > div:nth-child(2) > div > div.disabling-view > div.card > div:nth-child(2) > div.id > a"));
    //Строчка причина отключения
    public static final SelenideElement reasonOff = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[6]/div[2]/div[2]/div[2]/div/table/tbody/tr[9]/td[1]"));

}
