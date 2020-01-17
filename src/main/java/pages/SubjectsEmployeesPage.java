package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class SubjectsEmployeesPage {
    private SubjectsEmployeesPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating SubjectsEmployeesPage class.");
    }



    //поле Наименование организации, фильтр
    public static final SelenideElement fieldNameOfOrganizationEmployees = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]//label[.='Наименование организации:']/..//input"));
    //первая запись в фильтре наименование организации
    public static final SelenideElement firstOrganization = $(By.xpath("/html/body/div[2]/div/div/div/ul/li"));
    //столбец Наименование организации
    public static final ElementsCollection tableNameOfOrganization = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[2]"));
    //столбец Наименование подразделения
    public static final ElementsCollection tableNameOfSubdivision = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[3]"));
    //поле Наименование подразделения, фильтр
    public static final SelenideElement fieldNameOfSubdivision = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]//label[.='Наименование подразделения:']/..//input"));
    //первая запись в фильтре наименование подразделения
    public static final SelenideElement firstSubdivision = $(By.xpath("/html/body/div[3]/div/div/div/ul/li/span"));
    //поле Должность, фильтр
    public static final SelenideElement fieldPosition = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]//label[.='Должность:']/..//div"));
    //первая запись в фильтре должность
    public static final SelenideElement firstPosition = $(By.xpath("/html/body/div[3]/div/div/div/ul/li"));
    //столбец Должность
    public static final ElementsCollection tablePosition = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[5]"));
    //поле зарегистрирован в мобильном приложении, фильтр
    public static final SelenideElement fieldRegisratedInMobileAp = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[4]//label[.='Зарегистрирован в мобильном приложении:']/..//div"));
    //поле для ввода текста зарегистрирован в мобильном приложении, фильтр
    public static final SelenideElement textBoxRegisratedInMobileAp = $(By.xpath("//span[@class='ant-select-dropdown-search']/..//input"));
    //первая запись в фильтре зарегистрирован в мобильном приложении
    public static final SelenideElement firstRegistrated = $(By.xpath("//span[@class='ant-select-dropdown-search']/..//ul/li"));
    //карточка сотрудника, данные в блоке Информация учётной записи - внешняя система
    public static final SelenideElement outsideSystem = $(By.xpath("//table[@class='address-business-role-block']/tbody//td[3]"));
    //столбец ФИО
    public static final ElementsCollection tableFio = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[4]"));

}
