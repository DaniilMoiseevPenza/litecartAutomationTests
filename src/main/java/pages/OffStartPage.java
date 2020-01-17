package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class OffStartPage {
    private OffStartPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating OffStartPage class.");
    }
    //Кнопка Создать Отключение
    public static final SelenideElement newOff = $(By.xpath("//*[@id='create']"));
    //Поле поиск отключения
    public static final SelenideElement fieldSearchOff = $(By.xpath("//div[@class='disablings-table']//div/div/input"));
    //Кнопка поиск отключения
    public static final SelenideElement searchOff = $(By.xpath("//div[@class='disablings-table']//div[2]"));
    //Кнопка фильтр
    public static final SelenideElement filtrOff = $(By.xpath("//*[@id='menu-filter-icon']"));
    //Надпись показать удаленные
    public static final SelenideElement showDeleted = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[1]/label/span[1]"));
    //Кнопка Выгрузка
    public static final SelenideElement exportOff = $(By.xpath("//button[@class='excel']"));
    //Кнопка стрелка отключения (развернуть)
    public static final SelenideElement arrowOff = $(By.xpath("//*[@id='root']/div/div/div[1]/div/div[6]/button"));
    //Первая запись с отключением
    public static final SelenideElement firstOff = $(By.xpath("//div[@class='selectable-row even']"));
    // Пагинация
    public static final SelenideElement pagination = $(By.xpath("//div[@class='nav-label']"));
    //КОлонка дата создания
    public static final SelenideElement createDateOff = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[1]/div/div/div[1]/div/div/div[13]/div[1]"));
    // Предыдущая страница
    public static final SelenideElement prevPage = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[2]/div[1]/a[2]"));
    // Следующая страница
    public static final SelenideElement nextPage = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[2]/div[1]/a[1]"));
    // Последняя страница
    public static final SelenideElement lastPage = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[2]/div[1]/a[2]"));
    // Первая страница
    public static final SelenideElement firstPage = $(By.xpath("//*[@id=\"root\"]/div/div/div[1]/div/div[5]/div[2]/div[2]/div/div[2]/div[1]/a[1]"));
    //пуш-уведомление удаления/восстановления/создания отключения
    public static final SelenideElement messageOff = $(By.xpath("//div[@class='message']/p"));
    //Второе уведомление о выгрузке,экспорте отключений
    public static final SelenideElement secondNotificationOff = $(By.xpath("//div[@id='notification-container']//*[contains(text(),'Экспорт отключений в excel готов.')]"));

}

