package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$x;

public class ConsultationGridPage {
    private ConsultationGridPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ConsultationGridPage class.");
    }

    //пиктограмма проблемной ситуации в первом столбце
    public static final ElementsCollection pictogrammInGrid = $$x("//div[@class='push']");
    //пиктограмма проблемной решенной  ситуации в первом столбце
    public static final ElementsCollection greyPictogrammInGrid = $$x("//div[@class='push-solved']");
    //ячейка номер консультации
    public static final SelenideElement firstColumnInGrid = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div[15]"));
    //модальное окно заявки из карточки консультации
    public static final SelenideElement modalWindowOfRequest = $(By.xpath("//*[@id=\"view-request\"]"));
    //кнопка закрыть модальное окно заявки
    public static final SelenideElement closeModalWindowOfRequest = $(By.xpath("//*[@id=\"view-request\"]/div[1]/div"));
    //кнопка закрыть модальное окно отключения
    public static final SelenideElement closeModalWindowOff = $(By.xpath("//section[@id='view-disabling']//button"));
    //модальное окно отключения из карточки консультации
    public static final SelenideElement modalWindowOff = $(By.xpath("//*[@id=\"view-disabling\"]"));
    //колонка телефон в гриде консультаций
    public static final SelenideElement columnPhone = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[1]/div/div/div[9]/div[1]"));
    //поиск по номеру консультации
    public static final SelenideElement searchOfConsultation = $(By.xpath("//input[@placeholder='Поиск по № консультации']"));
}

