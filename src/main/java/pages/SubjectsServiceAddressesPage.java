package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class SubjectsServiceAddressesPage {
    private SubjectsServiceAddressesPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating SubjectsServiceAddressesPage class.");
    }

    //поле поиска
    public static final SelenideElement fieldSearchAddresses = $(By.xpath("//div[contains(text(),'Введите наименование адреса')]/..//input"));
    //поле Округ, фильтр
    public static final SelenideElement fieldRegionInServiceAddresses = $(By.xpath("//div[@id=\"menu-filter\"]//label[.=\"Округ:\"]/../div/div/div"));
    //поле Роль, фильтр
    public static final SelenideElement fieldRoleInServiceAddresses = $(By.xpath("//*[@id=\"menu-filter\"]//div[5]//label[.='Роль:']/../div/div/div"));
    //поле Район, фильтр
    public static final SelenideElement fieldDistrictInServiceAddresses = $(By.xpath("//div[@id=\"menu-filter\"]//label[.=\"Район:\"]/../div/div/div"));
    //поле Наименование организации, фильтр
    public static final SelenideElement fieldNameOfOrganization = $(By.xpath("//*[@id=\"menu-filter\"]//div[5]//label[.='Наименование организации:']/..//input"));
    //поле Район, фильтр, поле для ввода текста
    public static final SelenideElement textboxDistrictInServiceAddresses = $(By.xpath("/html/body/div[3]/div/div/div/span/span/input"));
    //поле Роль, фильтр, поле для ввода текста
    public static final SelenideElement textboxRoleInServiceAddresses = $(By.xpath("/html/body/div[4]/div/div/div/span/span/input"));
    //поле округ, карточка адреса
    public static final SelenideElement fieldRegionInCardOfAddress = $(By.xpath("//div[@class='card__body']//td[contains (text(), 'Округ')]/../td[2]"));
    //поле район, карточка адреса
    public static final SelenideElement fieldDistrictInCardOfAddress = $(By.xpath("//div[@class='card__body']//td[contains (text(), 'Район')]/../td[2]"));
    //таблица, столбец УК
    public static final ElementsCollection tableUk = $$(By.xpath("//div[@class=\"ant-table-body\"]//td[7]/div"));
    //столбец id адреса
    public static final ElementsCollection tableIdAddress = $$(By.xpath("//div[@class='ant-table-body']//tr//td[1]"));


}
