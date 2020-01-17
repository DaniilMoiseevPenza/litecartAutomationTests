package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.$;


public class NewOffPage {
    private NewOffPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating NewOffPage class.");
    }

    //Кнопка Сохранить
    public static final SelenideElement saveButton = $(byTitle("Сохранить"));
    //Кнопка Закрыть форму создание отключения
    public static final SelenideElement cancelNewOff = $(By.xpath("//div[@id='create-request']//div[contains (text(), 'Новое отключение')]/div"));
    //всплывающее сообщение о незаполнении обязательных полей
    public static final SelenideElement messageAboutMandatoryFields = $(By.cssSelector("#message-invalid > div.message > p"));
    //чекбокс Создать отключение на основе данного
    public static final SelenideElement checkboxCreateDublicateOff = $(By.cssSelector("#create-request > div.footer > div > label > span.ant-checkbox > input"));
    //чекбокс аварийное отключение
    public static final SelenideElement formNewOffEmergencyOff = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(1) > td:nth-child(2) > div > div > label:nth-child(1) > span:nth-child(2)"));
    //чекбокс плановое отключение
    public static final SelenideElement formNewOffPlannedOff = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(1) > td:nth-child(2) > div > div > label:nth-child(2) > span:nth-child(2)"));
    //поле тип отключения
    public static final SelenideElement formNewOffTypeOff = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(2) > td:nth-child(2) > div > span > span > span.ant-select-selection__rendered"));
    //поле Дома для отключения, кнопка Выбрать
    public static final SelenideElement buttonChoose = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(3) > td:nth-child(2) > div > span"));
    //блок Дома для отключения, поле адрес
    public static final SelenideElement blockHousesForOffFieldAddress = $(By.cssSelector("#outage-house > div.content-house > div.up > div.ant-select-show-search.ant-select-auto-complete.ant-select.ant-select-combobox.ant-select-enabled > div > div > ul > li > div > input"));
    //блок дома для отключения, кнопка добавить
    public static final SelenideElement buttonAddAddress = $(By.cssSelector("#outage-house > div.content-house > div.up > div:nth-child(1)"));
    //блок дома для отключения, кнопка принять
    public static final SelenideElement buttonAccept = $(By.cssSelector("#outage-house > div.footer-house > div > button"));
    //блок дома для отключения, кнопка закрыть
    public static final SelenideElement formHousesForOffButtonClose = $(By.xpath("//div[text()= 'Дома для отключения']//div[@class='close-button']"));
    //Дата отключения
    public static final SelenideElement formNewOffDateOff = $(By.xpath("//*[@id='create-request']/div[2]/table/tbody/tr[4]//input"));
    //поле Планируемая дата включения
    public static final SelenideElement formNewOffPlannedDateOn = $(By.xpath("//*[@id='create-request']/div[2]/table/tbody/tr[5]//input"));
    //поле Ведет работы
    public static final SelenideElement formNewOffWork = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(6) > td:nth-child(2) > div > div > div > ul > li > div > input"));
    //поле Описание
    public static final SelenideElement fieldDescription = $(By.cssSelector("#create-request > div.content > table > tbody > tr:nth-child(7) > td:nth-child(2) > div > textarea"));
    //категория отключения
    public static final SelenideElement formNewOffCategoryOff = $(By.xpath("html/body/div[2]/div/div/div/ul/li[1]/span[1]"));
    //дефект отключения
    public static final SelenideElement formNewOffTypeDefect = $(By.xpath("html/body/div[2]/div/div/div/ul/li[1]/ul/li[1]/span[2]"));
    //первый адрес в АК
    public static final SelenideElement formNewOffFirstAddress = $(By.xpath("html/body/div[3]/div/div/div/ul/li"));
    //Форма дома для отключения, выбранный адрес
    public static final SelenideElement selectedAddress = $(By.cssSelector("#outage-house > div.content-house > div:nth-child(2) > div.down > div:nth-child(2) > div"));
    //Форма дома для отключения, выбранный адрес c подъездом
    public static final SelenideElement selectedAddressWithEntrance = $(By.cssSelector("#outage-house > div.content-house > div:nth-child(2) > div.down > div:nth-child(2) > div"));
    //Форма дома для отключения, 1 подъезд
    public static final SelenideElement checkboxEntrance = $(By.xpath("//*[@id='outage-house']/div[2]/div[3]/div/div/label[1]/span[2]"));
    //Поле ведет работы, первая организация в АК
    public static final SelenideElement firstOrganizationWork = $(By.xpath("html/body/div[3]/div/div/div/ul/li[1]"));
    //всплывающее сообщение о создании отключения
    public static final SelenideElement messageAboutCreateOff = $(By.cssSelector("#message-done > div.message > p"));
    //пустота на форме создания отключения
    public static final SelenideElement emptyInFormNewOff = $(By.xpath("//div[@id='create-request']//*[contains (text(), 'Вид отключения')]/..//td"));
    //форма добавления подъездов/квартир, кнопка закрыть
    public static final SelenideElement formAddAppartmentButtonClose = $(By.xpath("//*[.='Указать']/../..//div[@class='close-button']"));
    //форма добавления подъездов/квартир, выбранные квартиры
    public static final SelenideElement formAddAppartmentSelectedAppartment = $(By.xpath("//div[@class='flat']//i/..//div"));
    //форма добавления подъездов/квартир, кнопка принять
    public static final SelenideElement formAddAppartmentButtonAcept = $(By.xpath("//*[.='Указать']/../..//button[text()='Принять']"));
    //форма добавления подъездов/квартир, чекбокс квартира
    public static final SelenideElement formAddEntranceCheckboxAppartment = $(By.xpath("//*[.='Подъезды']/../..//span[@class='ant-checkbox-inner']"));
    //форма добавления подъездов/квартир, чекбокс подъезд 1
    public static final SelenideElement formAddEntranceCheckboxEntrance = $(By.xpath("//div[@class='entrance']//span[contains (text(), '1')]"));
    //форма создания отключения, кнопка закрыть
    public static final SelenideElement formCreateOffButtonClose = $(By.xpath("//div[@id='create-request']/*[contains(text(), 'Новое отключение')]/div"));
    //поле Тип отключения, поле для ввода текста
    public static final SelenideElement fieldTypeOffTextbox = $(By.xpath("//span[@class='ant-select-dropdown-search']//input"));
}
