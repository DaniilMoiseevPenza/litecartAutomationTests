package pages;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.*;

public class FiltrConsultationPage {
    private FiltrConsultationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating FiltrConsultationPage class.");
    }


    //Кнопка фильтр консультаций
    public static final SelenideElement buttonFiltrConsultation = $(By.xpath("//*[@id=\"menu-filter-icon\"]"));
    //поле Тип консультации
    public static final SelenideElement fieldTypeOfConsultationInFiltr = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[3]/div[1]/span/span"));
    //поле Оказал консультацию
    public static final SelenideElement fieldProvidedConsultationInFiltr = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[3]/div[2]/div/div/div"));
    //первая запись адреса
    public static final SelenideElement firstAddressConsultation = $(By.xpath("html/body/div[2]/div/div/div/ul/li"));
    //первая строка таблицы консультаций
    public static final SelenideElement firstConsultationInGrid = $(By.xpath("//div[@class='react-grid-Cell__value']//div"));
    //чекбокс проблемная ситуация
    public static final SelenideElement checkboxProblemSituation = $(By.xpath("//label[.='Проблемная ситуация:']/..//span"));
    //первый тип консультации
    public static final SelenideElement firstTypeOfConsultation = $(By.xpath("/html/body/div[2]/div/div/div/ul/li/ul/li/span[2]/span/span"));
    //тип консультации, поле ввода текста
    public static final SelenideElement textboxTypeOfConsultationInFiltr = $(By.xpath("//input[@class='ant-select-search__field' and @role='textbox']"));
    //первый округ в выпадающем списке
    public static final SelenideElement firstRegionConsultation = $(By.xpath("/html/body/div[3]/div/div"));
    //первый район в выпадающем списке
    public static final SelenideElement firstDistrictConsultation = $(By.xpath("html/body/div[4]/div/div/div/ul/li"));
    //поле Закрыл проблемную ситуацию
    public static final SelenideElement fieldCloseProblemSituation = $(By.xpath(".//*[@id='menu-filter']/div/div[2]/div[2]/div[5]/div/div/div"));
    //поле Округ, кнопка очистить поле
    public static final SelenideElement clearFieldRegion = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[1]/div[1]/div/div/span[1]"));
    //Поле тип консультации
    public static final ElementsCollection fieldConsultationType = $$(By.xpath("//div[@class=\"react-grid-Canvas\"]/div/div/div/div[4]"));
    //Поле адрес
    public static final ElementsCollection fieldAddress = $$(By.xpath("//div[@class=\"react-grid-Canvas\"]/div/div/div/div[6]"));
    //столбец Дата составления
    public static final ElementsCollection columnDateCreateOfConsultation = $$x("//div[@class='react-grid-Canvas']//div/div/div/div[2]//span/div");
    //чекбокс Да
    public static final SelenideElement checkboxYes = $(By.xpath("//div[@class='ant-radio-group']//span[contains(text(),'Да')]"));
    //чекбокс Нет
    public static final SelenideElement checkboxNo = $(By.xpath("//div[@class='ant-radio-group']//span[contains(text(),'Нет')]"));
    //поле район
    public static final SelenideElement fieldDistrictOfConsultation = $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'Район')]//..//input"));
    //поле округ
    public static final SelenideElement fieldRegionOfConsultation = $(By.xpath("//div[@class='menu-filter']//*[contains(text(),'Округ')]//..//div"));
    //поле Район, ввод текста
    public static final SelenideElement textBoxFieldDistrict = $(By.xpath("//li[@title='муниципальный округ Арбат']/../..//input"));
    //Второй столбец таблицы консультаций ОДС
    public static final ElementsCollection tableColummOds = $$(By.xpath("//div[@class='odsName']"));
    //лэйбел проблемная ситуация
    public static final SelenideElement labelProblemSituation = $(By.xpath("//*[@id='menu-filter']//label[contains(text(), 'Проблемная ситуация')]"));
    //Поле район в гриде
    public static final ElementsCollection fieldDistrictInGridConsultation = $$(By.xpath("//div[@class='odsName']/span[2]"));
    //Поле Округ в гриде
    public static final ElementsCollection fieldRegionInGridConsultation = $$(By.xpath("//div[@class='odsName']/span[1]"));
}
