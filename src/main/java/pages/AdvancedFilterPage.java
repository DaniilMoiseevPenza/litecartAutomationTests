package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.$;


public class AdvancedFilterPage {

    private AdvancedFilterPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating AdvancedFilterPage class.");
    }


    //Фильтр Округ
    public static final SelenideElement filterOkrug = $(By.xpath(" //div[@class='menu-filter']//label[contains(text(),'Округ')]/../div/div"));
    //Фильтр Район
    public static final SelenideElement filterDistrict = $(By.xpath(" //div[@class='menu-filter']//label[contains(text(),'Район')]/../div/div"));
    //Заголовок Адрес
    public static final SelenideElement filterRequestEmpty = $(By.xpath(" //div[@id='menu-filter']//label[contains (text(), 'Адрес')]"));
    //поле Контактное лицо
    public static final SelenideElement fieldFio = $(By.cssSelector("#menu-filter > div > div:nth-child(2) > div:nth-child(3) > div:nth-child(3) > span > input"));
    //поле Вид работ
    //  public SelenideElement fieldWorkType = $(By.cssSelector("#menu-filter > div > div > form > div:nth-child(3) > div:nth-child(2) > input"));
    //поле Телефон
    public static final SelenideElement fieldPhone = $(By.cssSelector("#menu-filter > div > div:nth-child(2) > div:nth-child(3) > div:nth-child(2) > input"));
    //поле Приоритет
    public static final SelenideElement comboBoxPriority = $(By.cssSelector("#menu-filter > div > div:nth-child(4) > div:nth-child(1) > div:nth-child(1) > div > div > div"));
    //поле Приоритет обычная
    public static final SelenideElement priorityNormal = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(2)"));
    //поле Приоритет Аварийная ситуация
    public static final SelenideElement priorityEmergency = $(By.cssSelector("body > div:nth-child(3) > div > div > div > ul > li:nth-child(1)"));
    //поле Приоритет Срочная
    //  public SelenideElement priorityUrgent = $(By.cssSelector("body > div:nth-child(3) > div > div > div > ul > li:nth-child(3)"));
    //кнопка Применить
    public static final SelenideElement buttonApply = $(By.cssSelector("#menu-filter > div > div.flex-cn > button:nth-child(1)"));
    //кнопка Сбросить
    public static final SelenideElement buttonResetFilter = $(byTitle("Сбросить фильтр"));
    //поле Статус
    public static final SelenideElement comboBoxStatus = $(By.cssSelector("#menu-filter > div > div:nth-child(4) > div:nth-child(1) > div:nth-child(2) > div > div > div"));
    //Выбор статуса Ожидает обработки
    public static final SelenideElement selectWork = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(5)"));
    //Выбор статуса Новая
    public static final SelenideElement selectNew = $(By.cssSelector("body > div:nth-child(6) > div > div > div > ul > li:nth-child(2)"));
    //Выбор статуса В работе
    public static final SelenideElement selectExecution = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(4)"));
    //Выбор статуса Закрыта
    public static final SelenideElement selectClosed = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(3)"));
    //Выбор статуса Отклонена
    public static final SelenideElement selectReject = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(2)"));
    //Выбор статуса Отменена
    public static final SelenideElement selectCancelled = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul > li:nth-child(1)"));
    //поле Округ (кнопка очистить)
    public static final SelenideElement clearFieldOkrug = $(By.xpath("//div[@id='menu-filter']//label[contains (text(), 'Округ')]/../div/div/span[1]"));
    //поле Район
    public static final SelenideElement fieldDistrict = $(By.xpath("//div[@id='menu-filter']//label[contains (text(), 'Район')]/..//div"));
    // скролл Возвращено на доработку
    public static final SelenideElement backToWorkFilter = $(By.cssSelector("#menu-filter > div > div > form > div:nth-child(19) > div:nth-child(1)"));
    //Строка ОДС
    public static final SelenideElement ODS = $(By.cssSelector("#menu-filter > div > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > label"));
    //поле ОДС
    public static final SelenideElement odsFiltr = $(By.xpath("//label[.='№ ОДС:']/..//div"));
    //Поле Платность
    public static final SelenideElement comboBoxPayable = $(By.xpath("//*[@id=\"menu-filter\"]//label[contains(text(),'Платность')]/..//div/div/div"));
    //Платность бесплатная
    public static final SelenideElement payableFree = $(By.xpath("/html/body/div[2]/div/div/div/ul/li[1]"));
    //Первый адрес в АК поля улица
    public static final SelenideElement firstAddressFiltr = $(By.xpath("/html/body/div[2]/div/div/div/ul/li/span"));
    //Поле Адрес
    public static final SelenideElement addressFiltr = $(By.cssSelector("div:nth-child(1) > div > div > div > ul > li > div > input"));
    //Поле Этаж
    public static final SelenideElement floorFiltr = $(By.cssSelector("span:nth-child(4) > input"));
    //Поле Подъезд
    public static final SelenideElement enterenceFiltr = $(By.cssSelector("span:nth-child(2) > input"));
    //Поле Квартира
    public static final SelenideElement flatFiltr = $(By.cssSelector("span:nth-child(6) > input"));
    //Дата создания с
    public static final SelenideElement filterDateCreateWith = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата создания')]/..//input[@placeholder='с']"));
    //Дата создания по
    public static final SelenideElement filterDateCreateBy = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата создания')]/..//input[@placeholder='по']"));
    //Календарь в поле Дата создания С в фильтре заявок
    public static final SelenideElement filterCalendarDate = $(By.xpath("//label[.='Дата создания:']//..//input[@placeholder='с']"));
    //Дата закрытия с
    public static final SelenideElement filterDateCloseWith = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата закрытия')]/..//input[@placeholder='с']"));
    //Дата закрытия по
    public static final SelenideElement filterDateCloseBy = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата закрытия')]/..//input[@placeholder='по']"));
    //Срок выполнения заявки
    //   public SelenideElement dedlineOfRequest  = $(By.cssSelector("div:nth-child(3) > div:nth-child(4) > div > div > div"));
    //Поле Тип Заявки
    public static final SelenideElement typeRequest = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[2]/div[3]/span/span/ul/li/span/input"));
    //Первый тип дефекта
    public static final SelenideElement firstDeffect = $(By.cssSelector(".ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal"));
    //Комбо бокс причина отмены
    public static final SelenideElement cancellReason = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]/div[1]/div[3]/div/div/div"));
    //Комбо бокс причина отклонения
    public static final SelenideElement rejectReason = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]/div[1]/div[4]/div/div/div"));
    //Комбо бокс статус оплаты
    public static final SelenideElement payableStatus = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]/div[2]/div[1]/div/div/div"));
    //Комбо бокс источник
    public static final SelenideElement filtrSource = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]/div[3]/div[4]/div/div/div"));
    // Комбо бокс Создал заявку Должность
    public static final SelenideElement filtrFioCreate = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]/div[3]/div[2]/div/div/div"));
    // Первая строка в колонке район
    public static final SelenideElement filtrFirstDistrict = $(By.xpath("//li[.='муниципальный округ Арбат']"));
    //первый округ в выпадающем списке
    public static final SelenideElement firstRegionRequest = $(By.xpath("//li[.='Юго-Восточный административный округ']"));
    //первый район в выпадающем списке
    public static final SelenideElement firstDistrictRequest = $(By.xpath("//li[.='муниципальный округ Лефортово']"));
    //поле район, текстовое поле

}

