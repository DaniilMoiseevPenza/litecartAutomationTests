package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ViewConsultationPage {
    private ViewConsultationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewConsultationPage class.");
    }

    //Кнопка Свернуть и Развернуть (карточка консультации)
    public static final SelenideElement collapseAndExpandConsultation = $(By.cssSelector("div.request-view > button"));
    //Кнопка Следующая консультация (карточка консультации)
    public static final SelenideElement nextConsultation = $(By.cssSelector("div.btn-group > button.next"));
    //Кнопка Предыдущая консультация (карточка консультации)
    public static final SelenideElement prevConsultation = $(By.cssSelector("div.btn-group > button.prev"));
    //Запись Консультация № от (дата)
    public static final SelenideElement titleOfConsultation = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.btn-group > span"));
    //Номер консультации (гиперссылка)
    public static final SelenideElement numberOfConsultation = $(By.cssSelector("div.request-view > div.card > div.id > a"));
    //кнопка Добавить комментарий у проблемной ситуации
    public static final SelenideElement addTheCommentConsultation = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(21) > td:nth-child(2) > button"));
    //кнопка Добавить комментарий у обычной консультации
    public static final SelenideElement addTheCommentUsuallyConsultation = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(18) > td:nth-child(2) > button"));
    //кнопка Проблема решена
    public static final SelenideElement buttonProblemSolved = $(By.cssSelector("div.card > div.footer > button"));
    //скролл к полю По заявке
    public static final SelenideElement scrollToByRequest = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(15) > td.name"));
    //Проверка пиктограммы рядом с Номером консультации (гиперссылка)
    public static final SelenideElement pictogrammInCardOfConsultation = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[2]/div[2]/div[1]/div"));
    //скролл к полю Логин оператора
    public static final SelenideElement scrollToAddress = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(10) > td.name"));
    //проблемная ситуация
    public static final SelenideElement fieldProblemSituation = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(5) > td.name"));
    //проблема решена
    public static final SelenideElement fieldProblemSolved = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(6) > td.name"));
    //закрыл проблемную ситуацию
    public static final SelenideElement fieldCloseProblemSituation = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(7) > td.name"));
    //поле тип консультации
    public static final SelenideElement fieldTypeOfConsultation = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(8) > td.name"));
    //поле контактное лицо
    public static final SelenideElement fieldContactPerson = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(12) > td.name"));
    //поле телефон основной
    public static final SelenideElement fieldMainPhone = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(13) > td.name"));
    //поле телефон дополнительный
    public static final SelenideElement fieldAdditionalPhone = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(14) > td.name"));
    //поле по заявке
    public static final SelenideElement fieldByRequest = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(15) > td.name"));
    //поле по отключению
    public static final SelenideElement fieldByOff = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(16) > td.name"));
    //поле оказал консультацию
    public static final SelenideElement fieldProvidedConsultation = $(By.cssSelector("div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(17) > td.name"));
    //гиперссылка отключения в поле По отключению
    public static final SelenideElement cardOfConsultationHyperlinkOff = $(By.xpath("//div[@class='info']//*[contains(text(),'По отключению')]//../td[2]/a"));
    //гиперссылка заявки в поле По заявке
    public static final SelenideElement cardOfConsultationHyperlinkRequest = $(By.xpath("//div[@class='info']//*[contains(text(),'По заявке')]//../td[2]/a"));

}

