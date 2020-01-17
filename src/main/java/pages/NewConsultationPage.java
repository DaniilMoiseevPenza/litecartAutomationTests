package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class NewConsultationPage {
    private NewConsultationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating NewConsultationPage class.");
    }
    //поле Описание
    public static final SelenideElement labelDescriptionConsultation = $(By.xpath("//*[@id=\"request\"]/div[2]/div[1]/label[2]"));
    //название Подъезд
    public static final SelenideElement labelEntranceConsultation = $(By.xpath("//*[@id=\"request\"]/div[2]/div[2]/div[3]/label[1]"));
    //название Этаж
    public static final SelenideElement labelFloorConsultation = $(By.xpath("//*[@id=\"request\"]/div[2]/div[2]/div[3]/label[2]"));
    //название Квартира
    public static final SelenideElement labelApartmentConsultation = $(By.xpath("//*[@id=\"request\"]/div[2]/div[2]/div[3]/label[3]"));
    //название контактное лицо
    public static final SelenideElement labelContactPersonConsultation = $(By.xpath("//*[@id=\"request\"]/div[2]/div[2]/div[5]/label"));
    //поле Тип консультации
    public static final SelenideElement fieldTypeConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Тип консультации')]/..//span"));
    //поле Описание
    public static final SelenideElement fieldDescriptionConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Описание')]/..//textarea"));
    //поле Адрес
    public static final SelenideElement fieldAddressConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Адрес')]/..//div"));
    //поле Подъезд
    public static final SelenideElement fieldEntranceConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Подъезд')]/..//div[1]"));
    //поле Этаж
    public static final SelenideElement fieldFloorConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Этаж')]/..//div[2]"));
    //поле Квартира
    public static final SelenideElement fieldApartmentConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Квартира')]/..//div[3]"));
    //поле Основной телефон
    public static final SelenideElement fieldMainPhoneConsultation = $(By.xpath("//div[@id='request']//input[@id=\"phone-main\"]"));
    //поле Доплнительный телефон
    public static final SelenideElement fieldAdditionalPhoneConsultation = $(By.xpath("//div[@id='request']//*[@id=\"phone-additional\"]"));
    //поле Контактное лицо
    public static final SelenideElement fieldContactPersonConsultation = $(By.xpath("//div[@id='request']//label[contains(text(), 'Контактное лицо')]/..//div"));
    //кнопка Сохранить
    public static final SelenideElement buttonSaveConsultation = $(By.xpath("//*[@id=\"new-request\"]/div[3]/div/button"));
    //Лейбл "Символом * отмечены поля, обязательные для заполнения"
    public static final SelenideElement warningNewConsultation = $(By.xpath("//*[@id=\"new-request\"]/div[3]/div/span"));
    //кнопка Закрыть форму
    public static final SelenideElement buttonCloseFormConsultation = $(By.xpath("//*[@id=\"new-request\"]/div[1]/div"));
    //чекбокс заявка
    public static final SelenideElement checkboxRequest = $(By.xpath("//*[@id=\"request\"]/div[1]/label[1]/span[2]"));
    //чекбокс консультация
    public static final SelenideElement checkboxConsultation = $(By.xpath("//*[@id=\"request\"]/div[1]/label[2]/span[2]"));
}
