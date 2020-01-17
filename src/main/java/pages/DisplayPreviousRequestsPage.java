package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class DisplayPreviousRequestsPage {
    private DisplayPreviousRequestsPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating DisplayPreviousRequestsPage class.");
    }

    //Первый адрес в АК поля улица
    public static final SelenideElement firstAddressNewForm = $(By.xpath("/html/body/div[2]/div/div/div/ul/li/span"));
    //Первый номер заявки в блоке предыдущие заявки
    public static final SelenideElement firstNumberRequestNewForm = $(By.xpath("//div[@id='previous-requests-panel']//tbody/tr/td/span"));
    //список предыдущих заявок
    public static final ElementsCollection previousRequests = $$(By.xpath("//div[@class='previous-requests-table']/..//tbody/tr"));
}

