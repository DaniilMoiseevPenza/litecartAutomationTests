package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.$;


public class NewRequestPage {
    private NewRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating NewRequestPage class.");
    }

    //поле Адрес
    public static final SelenideElement fieldAddress = $(By.xpath("//div[@id='set-address-focus']//input[@class='ant-input ant-select-search__field']"));
    //поле Подъезд
    public static final SelenideElement fieldEntrance = $(By.id("podezd"));
    //поле Этаж
    public static final SelenideElement fieldFloor = $(By.id("floor"));
    //поле Квартира
    public static final SelenideElement fieldFlat = $(By.id("apartment"));
    //поле Комментарий к адресу
    public static final SelenideElement fieldCommentAddress = $(By.id("address-comment"));
    //поле Основной телефон
    public static final SelenideElement fieldMainPhone = $(By.id("phone-main"));
    //поле Дополнительный телефон
    public static final SelenideElement fieldAdditionalPhone = $(By.id("phone-additional"));
    //Очистить основной телефон
    public static final SelenideElement clearMainPhone = $(By.xpath("//label[contains(text(),'Основной:')]/..//*[@class='ant-select-selection__clear  visible']"));
    //поле Контактное лицо
    public static final SelenideElement fieldContactPerson = $(By.cssSelector("#request > div:nth-child(2) > div.right > div:nth-child(6) > div > input"));
    //поле Особые условия
    // public static final SelenideElement fieldSpecialConditions = $(By.cssSelector(".ant-radio-wrapper-checked > span:nth-child(2) > span.input-container > input"));
    //поле Описание проблемы
    public static final SelenideElement fieldDescription = $(By.xpath("//div[@id='new-request']//label[contains (text (), 'Описание проблемы')]/..//textarea"));
    //поле Поиск по номеру заявки
//    public static final SelenideElement fieldSearchByRequestNumber = $(By.cssSelector("#search"));
    //кнопка Найти напротив поля Поиск по номеру заявки
    public static final SelenideElement findRequest = $(By.xpath("//div[@id='request']//div[@class=\"enter-icon\"]"));
    //кнопка Сохранить
    public static final SelenideElement saveRequest = $(By.xpath("//*[@id=\"new-request\"]/div[3]/div/button"));
    //Лейбл "Символом * отмечены поля, обязательные для заполнения"
    public static final SelenideElement warningNewRequest = $(By.cssSelector("#new-request > div.footer > div > span"));
    //кнопка Закрыть (крестик) форму создания новой заявки
    public static final SelenideElement closeFormNewRequest = $(By.cssSelector("#new-request > div.header > div"));
    //выпадающий список Тип заявки
    public static final SelenideElement fieldTypeRequest = $(By.xpath("//div[@id='new-request']//label[contains(text(),'Тип заявки')]/..//span/span"));
    //поле Приоритет
    public static final SelenideElement fieldPriority = $(By.cssSelector("#request > div > div.left > div.input.ant-select.ant-select-disabled.ant-select-allow-clear > div > div"));
    //поле поиск типа заявки
    public static final SelenideElement searchTypeRequest = $(By.xpath("//div[@id='new-request']//input[@id='search']"));
    //Поле другое домофон
    public static final SelenideElement fieldAnotherIntercom = $(By.cssSelector("#request > div > div.right > div:nth-child(4) > input"));
    //Тип Благоустройство
    public static final SelenideElement typeAccomplishment = $(By.xpath("html/body/div[2]/div/div/div/ul/li[1]/span[1]"));
    //Тип Благоустройство, подтип Другое
    public static final SelenideElement subtypeRequestFreeNormal = $(By.xpath("html/body/div[2]/div/div/div/ul/li[1]/ul/li[2]/span[2]"));
    //Тип Благоустройство, подтип Заказ вывоза мусора (бункер)
    public static final SelenideElement subtypeRequestPayNormal = $(By.xpath("html/body/div[2]/div/div/div/ul/li/ul/li/span[2]"));
    //Тип Вентиляция
    public static final SelenideElement typeVentilation = $(byTitle("Вентиляция"));
    //Тип Вентиляция, подтип Необходимо проверить/прочистить дымоход
    public static final SelenideElement subtypeRequestFreePayNormal = $(byTitle("Необходимо проверить/прочистить дымоход"));
    //Тип Благоустройство, подтип Открытый люк (дворовая территория)
    public static final SelenideElement subtypeRequestFreeEmergency = $(byTitle("Открытый люк (дворовая территория)"));
    //Тип Отопление
    public static final SelenideElement typeHeating = $(byTitle("Отопление"));
    //Тип Благоустройство, подтип Свищ, сильная течь в приборе отопления
    public static final SelenideElement subtypeRequestFreePayEmergency = $(byTitle("Свищ, сильная течь в приборе отопления"));
    //значок платности (платная заявка)
    public static final SelenideElement picturePayRequest = $(By.cssSelector("#request > div > div.left > div.payable"));
    //значок платности (бесплатная/платная заявка)
    public static final SelenideElement pictureFreePayRequest = $(By.cssSelector(" #request > div > div.left > div.payable-mb"));
    //Отключение в списке отключений в окне доп информации в форме создания новой заявки
    public static final SelenideElement offInAdditionalOff = $(By.xpath("//div[@class='additional']//*[contains(text(),'Отключения по адресу')]/../div"));
    //Желаемое время С:
    public static final SelenideElement fieldTimeWith = $(By.xpath("//label[.='Желаемое время:']/..//*[contains(text(), 'С:')]"));
    //Желаемое время По:
    public static final SelenideElement fieldTimeBy = $(By.xpath("//label[.='Желаемое время:']/..//*[contains(text(), 'По:')]"));


//    //заголовок Дополнительно
//    public static final  SelenideElement headerAdditional = $(By.xpath("//div[@class='additional']//*[contains(text(), 'Дополнительно:')]"));
//    //скролл к надписи Отключения по адресу
//    public static final  SelenideElement scrollToOffOnAddress = $(By.xpath("//div[@class='additional']//*[contains(text(), 'Отключения по адресу:')]"));


    //выпадающий список Тип заявки (бесплатная, обычная)
    // public static final SelenideElement typeRequestFreeNormal = $(By.cssSelector("li:nth-child(1) > ul > li:nth-child(1) > span.ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal > span"));
    //выпадающий список Тип заявки (платная, обычная)
    // public static final SelenideElement typeRequestPayNormal = $(By.cssSelector("li:nth-child(1) > ul > li:nth-child(22) > span.ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal.ant-select-tree-node-selected > span"));
    //выпадающий список Тип заявки (бесплатная/платная, обычная)
    // public static final SelenideElement typeRequestFreePayNormal = $(By.cssSelector("li:nth-child(2) > ul > li:nth-child(3) > span.ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal.ant-select-tree-node-selected > span"));
    //выпадающий список Тип заявки (бесплатная, аварийная)
    //public static final SelenideElement typeRequestFreeEmergency = $(By.cssSelector("li:nth-child(1) > ul > li:nth-child(41) > span.ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal.ant-select-tree-node-selected > span"));
    //выпадающий список Тип заявки (платная, аварийная)
    // public static final SelenideElement typeRequestPayEmergency = $(By.cssSelector(""));
    //выпадающий список Тип заявки (бесплатная/платная, аварийная)
    // public static final SelenideElement typeRequestFreePayEmergency = $(By.cssSelector("li:nth-child(12) > ul > li:nth-child(8) > span.ant-select-tree-node-content-wrapper.ant-select-tree-node-content-wrapper-normal.ant-select-tree-node-selected > span"));
    //поле Приоритет
    // public static final SelenideElement priorityRequest = $(By.cssSelector("#request > div:nth-child(2) > div.left > div.input.ant-select.ant-select-disabled.ant-select-allow-clear > div"));
    //выпадающий список Источник
    // public static final SelenideElement source = $(By.cssSelector("#request > div:nth-child(2) > div.right > div:nth-child(8) > div > div > div"));
    //Сообщение об обязательности заполнения поля Тип заявки

    //public static final SelenideElement fieldTypeRequestMessage = $(By.cssSelector(".ant-form-item-with-help.form-row > div.ant-form-item-control-wrapper > div > div"));
    //Сообщение об обязательности заполнения поля Приоритеn
    // public static final SelenideElement fieldPriorityMessage = $(By.cssSelector(".ant-col-19 > div > div.ant-form-item-control-wrapper > div > div.ant-form-explain"));
    //Сообщение об обязательности заполнения поля Адрес
    //public static final SelenideElement fieldAddressMessage = $(By.cssSelector(".ant-col-18.ant-form-item-control-wrapper > div > div.ant-form-explain"));
    //Сообщение об обязательности заполнения поля Основной телефон
    // public static final SelenideElement fieldMainPhoneMessage = $(By.cssSelector(".ant-col-14.ant-form-item-control-wrapper > div > div.ant-form-explain"));
    //Сообщение об обязательности заполнения поля Источник
    // public static final SelenideElement fieldSourceMessage = $(By.cssSelector(".ant-col-18 > div > div:nth-child(9) > div > div > div.ant-col-18.ant-form-item-control-wrapper > div > div.ant-form-explain"));
    //Поле адрес, выбор первого адреса
    // public static final SelenideElement addressAk = $ (By.cssSelector("body > div:nth-child(5) > div > div > div > ul > li:nth-child(1)"));
    //Поле адрес, выпадающий список адресов
    public static final SelenideElement addressList = $(By.cssSelector("body > div:nth-child(4) > div > div > div > ul"));
    //форма новой заявки
    //  public static final SelenideElement formNewRequest = $ (By.id("#new-request"));
    //Выбор источника
    public static final SelenideElement sourcePhone = $(By.xpath("/html/body/div[4]/div/div/div/ul/li[3]"));
    //поле Источник
    public static final SelenideElement fieldSource = $(By.cssSelector("#request > div > div.right > div:nth-child(8) > div > div > div"));
    //лейбел Адрес
    public static final SelenideElement labelAddress = $(By.xpath("//*[@id='set-address-focus']/label"));
    //Лейбел Комментарий к адресу
    public static final SelenideElement labelCommentToAddress = $(By.xpath("//*[@id='address-comment']"));
    //Лейбел Подъезд
    public static final SelenideElement labelEntrance = $(By.xpath("//*[@id='podezd']"));
    //Лейбел Этаж
    public static final SelenideElement labelFloor = $(By.xpath("//*[@id='floor']"));
    //Лейбел Квартира
    public static final SelenideElement labelApartment = $(By.xpath("//*[@id='apartment']"));
    //Лейбел Домофон (код)
    public static final SelenideElement labelDomophone = $(By.xpath("//label[.='Домофон (код):']"));
    //Лейбел Основной
    public static final SelenideElement labelMainPhone = $(By.xpath("//div[@id='request']//*[@id='phone-main']"));
    //Лейбел Дополнительный телефон
    public static final SelenideElement labelAdditionalPhone = $(By.xpath("//*[@id='phone-additional']"));
    //Лейбел Контактное лицо
    public static final SelenideElement labelContactPerson = $(By.xpath("//div[@id='create']//label[.='Контактное лицо:']//..//input"));
    //Лейбел Желаемое время
    public static final SelenideElement labelDesiredTime = $(By.xpath("//div[@id='create']//label[.='Желаемое время:']"));
    //Лейбел Источник
    public static final SelenideElement labelSource = $(By.xpath("//div[@id='request']//label[.='Источник: *']"));
    //Лейбел Тип заявки
    public static final SelenideElement labelTypeRequest = $(By.xpath("//*[@id='request']/div/div[1]/label[1]"));
    //Лейбел Приоритет
    //  public static final SelenideElement labelPriority = $(By.xpath("//*[@id='request']/div/div[1]/label[2]"));
    //Лейбел Описание проблемы
    public static final SelenideElement labelDescriptionOfTheProblem = $(By.xpath("//*[@id='request']/div/div[1]/label[3]"));
    //Первый адрес в автокомплите
    public static final SelenideElement firstAddressInAK = $(By.cssSelector(".ant-select-dropdown-menu-item-active.ant-select-dropdown-menu-item"));
    //Кнопка найти заявку
    public static final SelenideElement buttonEnterSearchRequest = $(By.xpath("//div[@id='create']//div[@class='search-by-request']//div[@class='enter-icon']"));
    //поле поиска заявки по номеру
    public static final SelenideElement fieldSearchOnNumberRequest = $(By.xpath("//div[@id='request']//input[@id='search']"));
    //Поле номер заявки в предыдущих заявках
    public static final SelenideElement numberPreviusRequest = $(By.xpath("//div[@class='previous-requests-table']//span[@class='link']"));

    //Список дефектов
    //  public static final SelenideElement defectList = $(By.xpath("/html/body/div[2]/div/div/div/ul"));


}



