package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.*;


public class DispatcherCentrPage {
    private DispatcherCentrPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating DispatcherCentrPage class.");
    }


    // Лейбл "Поиск по номеру заявки"
    public static final SelenideElement search = $(By.xpath("//input[@placeholder='Поиск по № заявки']"));
    //Кнопка Найти
    public static final SelenideElement find = $(By.xpath("//div[@class='enter-icon']"));
    //Кнопка Выбор столбцов
    public static final SelenideElement choiceOfColumns = $(By.xpath("//button[@class='column-chooser']"));
    //Кнопка Расширенный фильтр
    public static final SelenideElement advancedFilter = $(By.xpath("//button[@id='menu-filter-icon']"));
    //Кнопка Выгрузка в ексель (выше грида с заявками)
    public static final SelenideElement export = $(By.xpath("//button[@class='excel']"));
    //Кнопка Выгрузка в ексель в форме экспорт
    public static final SelenideElement exportInForm = $(By.xpath("//button[.='Экспорт']"));
    // Кнопка Выписка
    public static final SelenideElement buttonStatement = $(By.xpath("//button[@class='statment']"));
    //Кнопка Свернуть и Развернуть (меню с рубриками)
    public static final SelenideElement collapseAndExpandMenu = $(By.xpath("//button[@class='collapse']"));
    //Рубрика На контроле
    public static final SelenideElement rubricAtTheControl = $(byText("На контроле"));
    //Рубрика Активные
    public static final SelenideElement rubricActive = $(byText("Активные"));
    //Рубрика Новые
    public static final SelenideElement rubricNew = $(byText("Новые"));
    //Рубрика Ожидают обработки
    public static final SelenideElement rubricWork = $(byText("Ожидают обработки"));
    //Рубрика В работе
    public static final SelenideElement rubricExecution = $(byText("В работе"));
    //Рубрика Закрыты
    public static final SelenideElement rubricClosed = $(byText("Закрыты"));
    //Рубрика Отклонены
    public static final SelenideElement rubricReject = $(byText("Отклонены"));
    //Рубрика Отменены
    public static final SelenideElement rubricCancelled = $(byText("Отменены"));
    //рубрика Консультации
    public static final SelenideElement rubricConsultation = $(byText("Консультации"));
    //Подпись с количеством страниц
    public static final SelenideElement waiter = $(By.xpath("//*[@class='layout-container']//span[@class='ant-spin-dot']"));
    //Пагинация СТП
    public static final SelenideElement paginationStp = $(By.xpath("//span[@class='goto']//span[.='1']"));
    //Таблица заявок поле статус
    public static final ElementsCollection tableStatus = $$x("//div[@class='react-grid-Cell__value']//div[contains (@title, 'Новая') or contains (@title, 'Ожидает обработки') or contains (@title, 'В работе') or contains (@title, 'Закрыта') or contains (@title, 'Отклонена') or contains (@title, 'Отменена')]");
    // Первая заявка в гриде
    public static final SelenideElement firstRequest = $(By.xpath("//div[@class='react-grid-Cell__value']//div/div"));
    //столбец номер заявки
    public static final ElementsCollection columnNumberOfRequest = $$x("//div[@class='react-grid-Cell__value']//div/span/div/div[1]");
    //пагинация, кнопка следующая страница
    public static final SelenideElement nextPage = $(By.xpath("//a[@title='Перейти на следующую страницу']"));
    //пагинация, кнопка перейти на последнюю страницу
    public static final SelenideElement goToLastPage = $(By.xpath("//a[@title='Перейти на последнюю страницу']"));
    //пагинация, кнопка предыдущая страница
    public static final SelenideElement prevPage = $(By.xpath("//a[@class='prev']"));
    //пагинация, кнопка перейти на  страницу
    public static final SelenideElement goToFirstPage = $(By.xpath("//a[@class='first']"));
    //форма фильтра консультаций
    public static final SelenideElement formOfFilterOfConsultation = $(By.xpath(".//*[@id='menu-filter']"));
    //пуш о создании заявки/незхаполнении полей
    public static final SelenideElement notification = $(By.xpath("//*[@id=\"required\"]/div"));
    //значение первого столбца
    public static final ElementsCollection firstColumn = $$(By.xpath("//div[@class='react-grid-Canvas']//div/span/div"));

}



