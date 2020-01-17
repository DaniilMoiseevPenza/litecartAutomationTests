package steps;

import cucumber.api.java.en.And;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static pages.ExportRequestPage.notificationExport;

public class ExportConsultationStepDefinitions {


    @And("^check pop-up message at export of consultation is displayed$")
    public void checkPopUpMessageAtExportOfConsultationIsDisplayed() {
        notificationExport.shouldHave(text("Подождите, файл формируется.")).waitUntil(visible, 10000);
//        exportConsultation.secondNotificationConsultation.shouldHave(text("Экспорт косультаций в excel готов.")).findElementByLinkText("Скачать").isDisplayed();
    }


}