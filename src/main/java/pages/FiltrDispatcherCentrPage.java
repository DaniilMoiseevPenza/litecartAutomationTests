package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class FiltrDispatcherCentrPage {
    private FiltrDispatcherCentrPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating FiltrDispatcherCentrPage class.");
    }
    //Первый столбец отфильтрованной таблицы, первый span (Округ)
    public static final ElementsCollection tableColumm1 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div/div/div/span/div"));
    //Первый столбец отфильтрованной таблицы, второй span (Район)
    public static final ElementsCollection tableColumm1Value2 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div/div/div/span/div/span[2]"));
    //Первый столбец отфильтрованной таблицы для фильтра
    public static final ElementsCollection tableColummFiltr1 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[1]"));
    //Второй столбец отфильтрованной таблицы
    public static final ElementsCollection tableColumm2 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[2]/div/div/span/div"));
    //Третий столбец отфильтрованной таблицы
    public static final ElementsCollection tableColumm3 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[3]/div/div/span/div"));
    //Четвертый столбец отфильтрованной таблицы
    public static final ElementsCollection tableColumm4 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[4]/div/div/span/div"));
    //Название 1 колонки
    public static final SelenideElement nameColumn1 = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[1]/div/div/div/div[1]"));
    //Название 2 колонки
    public static final SelenideElement nameColumn2 = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[1]/div/div/div[2]/div[1]"));
    //Название 3 колонки
    public static final SelenideElement nameColumn3 = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[1]/div/div/div[3]/div[1]"));
    //Название 4 колонки
    public static final SelenideElement nameColumn4 = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[1]/div/div/div[4]/div[1]"));
    //первый столбец (значение чекбокса)
    public static final ElementsCollection tableColumm1Checkbox = $$(By.xpath("//div[@class=\"react-grid-Viewport\"]/div/div/div/div/div[1]/div/div/span/label/span"));
    //второй столбец (значение чекбокса)
    public static final ElementsCollection tableColumm2Checkbox = $$(By.xpath("//div[@class=\"react-grid-Viewport\"]/div/div/div/div/div[2]/div/div/span/label/span"));
    //Первый столбец отфильтрованной таблицы, второй span (Одс)
    public static final ElementsCollection tableColumm1Value3 = $$(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div/div/div[1]/div/div/span[3]"));
    //Первый столбец дата создания
    public static final ElementsCollection tableColummCreateDate = $$(By.xpath("//*[@id=\"root\"]/div/div[1]/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div/div[2]/div/div/div/div/div/div"));
}
