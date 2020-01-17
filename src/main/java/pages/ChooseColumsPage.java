package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ChooseColumsPage {
    private ChooseColumsPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ChooseColumsPage class.");
    }

    //кнопка выбрать все
    public static final SelenideElement selectAll = $(By.cssSelector("#column-selector > div.content > div.buttons > button.select-all"));
    //кнопка убрать все
    public static final SelenideElement deselectAll = $(By.cssSelector("#column-selector > div.content > div.buttons > button.deselect-all"));
    //кнопка поменять местами
    public static final SelenideElement swapAll = $(By.cssSelector("#column-selector > div.content > div.buttons > button.swap-all"));
    //кнопка по умолчанию
    public static final SelenideElement custom = $(By.cssSelector("#column-selector > div.content > div.buttons > button.default"));
    //кнопка принять
    public static final SelenideElement apply = $(By.cssSelector("#column-selector > div.footer > div > button"));
    //кнопка закрыть форму выбора колонок
    public static final SelenideElement closeFormChoiseColums = $(By.cssSelector("#column-selector > div.header > div"));
    //поле тип заявки (категория)
    public static final SelenideElement requestType = $(By.xpath("//li[.='Тип заявки (категория)']"));
    //поле приоритет
    //  public static final SelenideElement prioriti = $(By.xpath("//li[.='Приоритет']"));
    //поле статут
    // public static final SelenideElement status = $(By.xpath("//li[.='Статус']"));
    //поле адрес
    //  public static final SelenideElement address = $(By.xpath("//li[.='Адрес']"));
    //поле описание проблемы
    //   public static final SelenideElement problemDescription = $(By.xpath("//li[.='Описание проблемы']"));
    //поле заявитель
    //  public static final SelenideElement declarant = $(By.xpath("//li[.='Заявитель']"));
    //поле тип дефекта
    public static final SelenideElement typeDefect = $(By.xpath("//li[.='Тип дефекта']"));
    //поле платность
    //  public static final SelenideElement payable = $(By.xpath("//li[.='Платная']"));
    //поле статус полаты
    //  public static final SelenideElement payStatus = $(By.xpath("//li[.='Статус оплаты']"));
    //поле исполнитель
    //  public static final SelenideElement executor = $(By.xpath("//li[.='Исполнитель']"));
    //поле желаемая дата
    //  public static final SelenideElement desiredDate = $(By.xpath("//li[.='Желаемая дата']"));
    //поле желаемое время
    //  public static final SelenideElement desiredTime = $(By.xpath("//li[.='Желаемое время']"));
    //поле причина отмены
    //  public static final SelenideElement cancellReason = $(By.xpath("//li[.='Причина отмены']"));
    //поле причина отклонения
    //   public static final SelenideElement rejectReason = $(By.xpath("//li[.='Причина отклонения']"));
    //поле округ
    //  public static final SelenideElement district = $(By.xpath("//li[.='Округ']"));
    //поле район
    //  public static final SelenideElement area = $(By.xpath("//li[.='Район']"));
    //поле принял в работу
    //  public static final SelenideElement acceptFio = $(By.xpath("//li[.='Принял заявку']"));
    //поле вид выполненных работ
    //   public static final SelenideElement workPerform = $(By.xpath("//li[.='Вид выполненных работ']"));
    //поле согласованная стоимость
    //  public static final SelenideElement agreedValue = $(By.xpath("//li[.='Согласованная стоимость']"));
    //поле оценка
    // public static final SelenideElement mark = $(By.xpath("//li[.='Оценка']"));
    //поле отзыв о работе
    //   public static final SelenideElement feedback = $(By.xpath("//li[.='Отзыв о работе']"));
    //поле фио заявителя
    public static final SelenideElement fio = $(By.xpath("//li[.='Контактное лицо']"));
    //поле основной телефон
    public static final SelenideElement mainPhone = $(By.xpath("//li[.='Телефон основной']"));
    //поле дополнительный телефон
    //  public static final SelenideElement additionalPhone = $(By.xpath("//li[.='Телефон дополнительный']"));
    //поле специализация исполнителя
    // public static final SelenideElement specializationExecutor = $(By.xpath("//li[.='Специализация исполнителя']"));
    //поле квартира
    //  public static final SelenideElement flat = $(By.xpath("//li[.='Квартира']"));
    //поле подъезд
    // public static final SelenideElement enterance = $(By.xpath("//li[.='Подъезд']"));
    //поле этаж
    //  public static final SelenideElement floor = $(By.xpath("//li[.='Этаж']"));
    //поле адрес дома
    //  public static final SelenideElement houseAddress = $(By.xpath("//li[.='Адрес дома']"));
    //поле источник
    //  public static final SelenideElement source = $(By.xpath("//li[.='Источник']"));
    //поле дата составления
    //  public static final SelenideElement startDate = $(By.xpath("//li[.='Дата составления']"));
    //поле номер заявки
    //  public static final SelenideElement requestNumber = $(By.xpath("//li[.='Номер заявки']"));
    //поле одс
    //  public static final SelenideElement ods = $(By.xpath("//li[.='ОДС']"));
    //список колонок
    //   public static final SelenideElement columnsList = $(By.cssSelector("#column-selector > div.content > div.columns-not-selected > div"));
    //Скролл к полю Квартира
    public static final SelenideElement scrollToFlat = $(By.xpath("//li[.='Квартира']"));
}
