package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class SubjectsOrganizationPage {
    private SubjectsOrganizationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating SubjectsOrganizationPage class.");
    }

    //поле Почтовый адрес
    public static final SelenideElement fieldMailingAddress = $(By.xpath("//div[@class='form-builder info']//td[contains(text(),'Почтовый адрес')]"));
    //кнопка добавить
    public static final SelenideElement buttonCreate = $(By.xpath("//button[@class='add-button']"));
    //поле поиска
    public static final SelenideElement fieldSearchSubjects = $(By.xpath("//span[@class='text-input ant-input-affix-wrapper']//input"));
    //следующая запись
    public static final SelenideElement nextSubject = $(By.xpath("//button[@class='next']"));
    //предыдущая запись
    public static final SelenideElement prevSubject = $(By.xpath("//button[@class='prev']"));
    //кнопка свернуть запись
    public static final SelenideElement collapseSubject = $(By.xpath("//button[@class='collapse']"));
    //кнопка развернуть запись
    public static final SelenideElement expandSubject = $(By.xpath("//aside[@class='request-view']//button[@class='expand']"));
    //кнопка развернуть/свернуть блок контакты
    public static final SelenideElement expandAndCollapseBlockContacts = $(By.xpath("//span[@class='toggle-block__caption'][contains(text(),'Контакты')]/..//span"));
    //кнопка развернуть/свернуть блок реквизиты
    public static final SelenideElement expandAndCollapseBlockRequisits = $(By.xpath("//span[@class='toggle-block__caption'][contains(text(),'Реквизиты')]/..//span"));
    //кнопка развернуть/свернуть блок системная информация
    public static final SelenideElement expandAndCollapseBlockSystemInformation = $(By.xpath("//span[@class='toggle-block__caption'][contains(text(),'Системная информация')]/..//span"));
    //поле ИНН
    public static final SelenideElement fieldInn = $(By.xpath("//div[@id='menu-filter']//label[contains(text(),'ИНН:')]/..//input"));
    //столбец ИНН
    public static final ElementsCollection tableInn = $$(By.xpath("//div[@class='react-grid-Canvas']/div/div/div/div[3]/div/div/span/div/span"));
    //пагинация субъектов
    public static final SelenideElement paginationSubjects = $(By.xpath("//li[@class='ant-pagination-total-text']"));
    //столбец Бизнес роли
    public static final ElementsCollection tableRole = $$(By.xpath("//div[@class='react-grid-Canvas']/div/div/div/div[2]/div/div/span/div/p"));
    //поле Роль в фильтре
    public static final SelenideElement filtrRole = $(By.xpath("//label[contains(text(),'Роль')]/..//div/div"));
    //ввод текста в поле роль в фильтре
    public static final SelenideElement filtrTextBoxRole = $(By.xpath("/html/body/div[2]/div/div/div/span/span/input"));
    //фильтр. поле роль. первая запись в выпадающем списке
    public static final SelenideElement filtrFirstRole = $(By.xpath("/html/body/div[2]/div/div/div/ul/li"));
    //фильтр. поле вид деятельности
    public static final SelenideElement filtrTypeOfRequest = $(By.xpath("//label[.='Вид деятельности:']/..//span/span"));
    //фильтр. поле вид деятельности. первая запись в списке
    public static final SelenideElement filtrFirstTypeOfRequest = $(By.xpath("//span[.='Благоустройство Другое']"));
    //первая ячейка грида
    public static final SelenideElement firstString = $(By.xpath("//*[@id=\"subjects\"]/div[2]/div/div/main/div[2]/div/div/div/div/div/div[2]/table/tbody/tr[1]/td"));
    //форма редактирование бизнес ролей
    public static final SelenideElement formUpdateOBusinessRole = $(By.xpath("/html/body/div[4]/div/div[2]/div/div[1]"));
    //форма редактирование бизнес ролей. дефекты
    public static final SelenideElement comboBoxDeffects = $(By.xpath("//i[@class='arrow']"));
    //форма редактирование бизнес ролей. дефекты, категория благоустройство
    public static final SelenideElement comboBoxCategory = $(By.xpath("//div[@class='organization-block']//span[@class='ant-tree-switcher ant-tree-switcher_close']"));
    //форма редактирование полей. Кнопка закрыть
    public static final SelenideElement formUpdateBusinessRoleButtonClose = $(By.xpath("//span[@class='ant-modal-close-x']"));
    //кнопка фильтр
    public static final SelenideElement buttonFilterOfSubjects = $(By.xpath("//button[@id='menu-filter-icon']"));
    //фильтр. поле вид деятельности(ввод текста)
    public static final SelenideElement filtrTypeOfRequestWriteText = $(By.xpath("//label[.='Вид деятельности:']/..//span/input"));
    //кнопка найти
    public static final SelenideElement buttonFindSubjects = $(By.xpath("//div[@class=\"enter-icon\"]"));
    //столбец Краткое Наименование
    public static final ElementsCollection tableShortName = $$(By.xpath("//tbody[@class='ant-table-tbody']/tr/td[2]"));


}
