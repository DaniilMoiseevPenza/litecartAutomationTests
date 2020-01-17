package steps;

import cucumber.api.java.en.And;

import static com.codeborne.selenide.Condition.*;
import static pages.DispatcherCentrPage.*;
import static pages.ExportRequestPage.*;

public class ExportRequestStepDefinitions {



    @And("^click buttonExportRequest$")
    public void clickButtonExportRequest() {
        waiter.waitUntil(not(visible), 10000);
        export.shouldBe(visible).click();
    }


    @And("^check pop-up message at export of request is displayed$")
    public void checkPopUpMessageAtExportOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Подождите, файл формируется.")).waitUntil(visible, 10000);
    }

    @And("^click close form export$")
    public void clickCloseFormExport() {
        closeToFormExport.click();
    }

    @And("^check that button export in formExport is displayed$")
    public void checkThatButtonExportInFormExportIsDisplayed() {
        exportInForm.shouldBe(visible);
    }

    @And("^click export in formExport$")
    public void clickExportInFormExport() {
        exportInForm.waitUntil(visible, 10000);
        exportInForm.click();
    }

    @And("^check that textAboutCountOfRequest is displayed$")
    public void checkThatTextAboutCountOfRequestIsDisplayed() {
        textAboutCountOfRequest.shouldHave(text("(Количество экспортируемых заявок не должно превышать 5000 записей")).shouldBe(visible);
    }
}
