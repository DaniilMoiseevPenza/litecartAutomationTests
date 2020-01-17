package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class SubjectsSubdiivisionsPage {
    private SubjectsSubdiivisionsPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating SubjectsSubdiivisionsPage class.");
    }

    //лэйбел Бизнес роль
    public static final SelenideElement fieldBusinessRole = $(By.xpath("//div[@class='form-builder info']//td[contains(text(),'Бизнес роль')]"));
    //поле Наименование организации
    public static final SelenideElement fieldNameOfOrganization = $(By.xpath("//label[.='Наименование организации:']/..//input"));
    //столбец Наименование организации
    public static final ElementsCollection tableNameOfOrganization = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[2]"));
    //Фильтр. Первая запись в поле Наименование организации
    public static final SelenideElement filtrFirstNameOfOrganization = $(By.xpath("/html/body/div[2]/div/div/div/ul/li[1]/span/span"));
    //поле Наименование вышестоящего подразделения
    public static final SelenideElement fieldNameOfHigherSubdivision = $(By.xpath("//label[.='Наименование вышестоящего подразделения:']/..//input"));
    //столбец Вышестоящее подразделение
    public static final ElementsCollection tableNameOfHigherSubdivision = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[3]"));
    //Фильтр. Первая запись в поле Наименование вышестоящего подразделения
    public static final SelenideElement filtrFirstNameOfHighSubdivision = $(By.xpath("/html/body/div[4]/div/div/div/ul/li/span/span"));
    //поле роль
    public static final SelenideElement fieldRoleSubdivisions = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[3]/div[3]/div/div/div/div"));
    //фильтр, первая роль из выпадающего списка
    public static final SelenideElement firstRoleSubdivisions = $(By.xpath("//span[@class='ant-select-dropdown-search']/..//li"));
    //поле вид деятельности
    public static final SelenideElement fieldTypeOfRequestInFiltrSubdivisions = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[3]/div[4]/span/span/span"));
    //поле роль, текстбокс
    public static final SelenideElement fieldRoleSubdivisionsTextbox = $(By.xpath("//span[@class='ant-select-dropdown-search']//input"));
    //карточка подразделения, поле  бизнес роль
    public static final SelenideElement cardOfSubdivisionsFieldRole = $(By.xpath("//div[@class='card']//td[contains(text(), 'Бизнес роль')]/..//td[2]//li"));
    //поле Виде деятельности (фильтр)
    public static final SelenideElement fieldKindOfActivityTextbox = $(By.xpath("//*[@id=\"menu-filter\"]/div/div[3]/div[4]/span/span/span"));
    //фильтр. поле вид деятельности. первая запись в списке
    public static final SelenideElement filtrFirstTypeOfRequestInSubdivisions = $(By.xpath("//div[@class='tree-content-height-limiter']/ul//ul//span[2]"));
}
