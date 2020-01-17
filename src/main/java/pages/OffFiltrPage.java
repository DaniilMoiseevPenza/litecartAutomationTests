package pages;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$x;

public class OffFiltrPage {
    private OffFiltrPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating OffFiltrPage class.");
    }
    //Кнопка Применить
    public static final SelenideElement applyButton = $(byTitle("Применить"));
    //Кнопка Отменить
    public static final SelenideElement cancelButton = $(byTitle("Отменить"));
    //Кнопка Сбросить фильтр
    public static final SelenideElement resetFilter = $(byTitle("Сбросить фильтр"));
    //поле Адрес
    public static final SelenideElement fieldAddressOffFiltr = $(By.xpath("//label[.='Адрес:']"));
    //поле Округ
    public static final SelenideElement fieldRegion = $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'Округ')]/..//div[@class='ant-select-selection__rendered']"));
    //первый округ
    public static final SelenideElement firstRegion = $(By.xpath("html/body/div[2]/div/div/div/ul/li"));
    //Поле Район
    public static final SelenideElement fieldDistrict = $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'Район')]/..//div[@class='ant-select-selection__rendered']"));
    //поле Район, ввод текста в тестбокс
    public static final SelenideElement fieldDistrictTextbox = $(By.xpath("/html/body/div[3]/div/div/div/span/span/input"));
    //первый район
    public static final SelenideElement firstDistrict = $(By.xpath("html/body/div[3]/div/div/div/ul/li"));
    //чекбокс Аварийное отключение
    public static final SelenideElement checkboxEmergencyOff = $(By.xpath("//div[@id='menu-filter']//span[contains(text(), 'Аварийное отключение')]"));
    //чекбокс Плановое отключение
    public static final SelenideElement checkboxPlannedOff = $(By.xpath("//div[@id='menu-filter']//span[contains(text(), 'Плановое отключение')]"));
    //поле Тип отключения
    public static final SelenideElement fieldTypeOff = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[2]/div[2]/span/span/span"));
    //поле ведет работы
    public static final SelenideElement fieldWork = $(By.xpath("//label[contains(text(),'Ведет работы')]//../div/div"));
    //Таблица отключений, столбец Адрес
    public static final ElementsCollection tableAddress = $$x("//*[@class='address-list']/p");
    //Первый адрес из выпадающего списка (в стп)
    public static final SelenideElement firstAddressOffinStp = $(By.xpath("/html/body/div[5]/div/div/div/ul/li"));
    //Первый адрес из выпадающего списка (в рдс)
    public static final SelenideElement firstAddressOff = $(By.xpath("/html/body/div[3]/div/div/div/ul/li"));
    //Первая организация из выпадающего списка (поле Ведет работы)
    public static final SelenideElement firstWorkOff = $(By.xpath("/html/body/div/div/div/div/ul/li"));
    //Таблица отключений, столбец Ведет работы
    public static final ElementsCollection tableWork = $$x("//*[@id=\"root\"]/div/div[1]/div[1]/div/div[5]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div[1]/div/div[9]/div/div/span/div");
    //Категория отключения (Горячее водоснабжение (ГВС))
    public static final SelenideElement categoryOff = $(By.xpath("/html/body/div[3]/div/div/div/ul/li[1]/span[2]/span"));
    //Тип отключения (Замена оборудования в котельной)
    public static final SelenideElement firstTypeOff = $(By.xpath("//span[contains(text(), 'Залив канализационной водой')]"));
    //Таблица отключений, столбец Отключение услуги
    public static final ElementsCollection tableDisablingTheService = $$x("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div[5]/div/div/span/div");
    //Таблица отключений, столбец Тип отключения
    public static final ElementsCollection tableTypeOff = $$x("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div[6]/div/div/span/div");
    //Таблица отключений, столбец Номер отключения, первая строка
    public static final ElementsCollection tableNumberOff = $$x("//*[@id=\"root\"]/div/div[1]/div[1]/div/div[5]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div[13]/div/div/span/div");
    //Таблица отключений, столбец аварийность
    public static final ElementsCollection tableEmergency = $$x("//div[@class='react-grid-Viewport']//div/div/div/div/div[4]");
    //Поле название типа отключения в фильтре
    public static final SelenideElement fieldTypeName = $(By.xpath("/html/body/div[3]/div/div/div/ul/li[1]/span[1]"));
    //Поле название дефекта отключения в фильтре
    public static final SelenideElement fieldDefectName = $(By.xpath("/html/body/div[3]/div/div/div/ul/li[1]/ul/li[1]/span[2]/span"));
    //Первое значение в фильтре номер ОДС
    public static final SelenideElement firstOds = $(By.xpath("//div[@class='ant-select-dropdown ant-select-dropdown--multiple ant-select-dropdown-placement-bottomLeft  ant-select-dropdown-hidden']//li"));
    //Стоблец номер ОДС в гриде
    public static final ElementsCollection tableOds = $$x("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[6]/div/div/span/div");
    //заголовок Адрес
    public static final SelenideElement labelAddress = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Адрес')]"));
    //Столбец Дата создания (значение столбца)
    public static final ElementsCollection valueColumnDateCreateOff = $$x("//*[@id=\"root\"]/div/div[1]/div[1]/div/div[5]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div[6]/div/div/span/span");
    //Дата отключения с
    public static final SelenideElement filterDateOffWith = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата отключения')]/..//input"));
    //Дата отключения по
    public static final SelenideElement filterDateOffBy = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата отключения')]/..//span[2]//input"));
    //Плановая дата включения с
    public static final SelenideElement filterPlannedDateOnWith = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Плановая дата включения')]/..//input"));
    //Плановая дата включения по
    public static final SelenideElement filterPlannedDateOnBy = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Плановая дата включения')]/..//span[2]//input"));
    //Дата фактического включения с
    public static final SelenideElement filterFactedDateOnWith = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата фактического включения')]/..//input"));
    //Дата фактического включения по
    public static final SelenideElement filterFactedDateOnBy = $(By.xpath("//div[@id='menu-filter']//*[contains (text (), 'Дата фактического включения')]/..//span[2]//input"));
    //Столбец Дата отключения (значение столбца)
    public static final ElementsCollection valueColumnDateOff = $$x("//div[@class='react-grid-Canvas']//div[1]/div/div/span/span");
    //Столбец Планируемая дата включения(значение столбца)
    public static final ElementsCollection valueColumnPlannedDateOff = $$x("//div[@class='react-grid-Canvas']//div/div/div/div[7]//span/span");
    //Столбец Фактичнская дата включения(значение столбца)
    public static final ElementsCollection valueColumnFactedDateOff = $$x("//*[@id=\"root\"]/div/div[1]/div[1]/div/div[5]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div[7]/div/div/span");
    //таблица отключений, столбец район
    public static final ElementsCollection tableDistrict = $$x(" //div[@class='react-grid-Canvas']/div/div/div/div[2]/div/div/span/span");
    //очистить округ
    public static final SelenideElement clearRegion = $(By.xpath("//div[@id='menu-filter']//span[@class='ant-select-selection__clear']"));
    //автокомплит в поле адрес
    public static final SelenideElement AkAddress = $(By.xpath("html/body/div[4]/div/div/div/ul"));
    //поле ОДС
    public static final SelenideElement fieldOds = $(By.xpath("//div[@id='menu-filter']//*[contains(text(),'№ ОДС')]/..//div[@class='ant-select-selection__rendered']"));


}

