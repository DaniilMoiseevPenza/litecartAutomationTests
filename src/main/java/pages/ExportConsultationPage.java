package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ExportConsultationPage {
    private ExportConsultationPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ExportConsultationPage class.");
    }

    //Второе уведомление о выгрузке,экспорте консультаций
    public static final SelenideElement secondNotificationConsultation = $(By.xpath("//*[@id=\"notification-container\"]/div[2]/div/div"));

}

