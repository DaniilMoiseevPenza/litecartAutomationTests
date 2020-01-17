package steps;

import cucumber.api.java.en.And;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.buttonStatement;
import static pages.ExportRequestPage.notificationExport;
import static pages.StatementRequestPage.*;
import static pages.StatementRequestPage.additionaly;
import static pages.StatementRequestPage.buttonExportInFormStatement;
import static pages.StatementRequestPage.closeToFormStatement;

public class StatementRequestStepDefinitions {


    @And("^click buttonStatementRequest$")
    public void clickButtonStatementRequest() {
        buttonStatement.shouldBe(visible).click();
    }


    @And("^check that element additionaly is displayed$")
    public void checkThatElementAdditionalyIsDisplayed() {
        additionaly.shouldBe(visible);
    }

    @And("^check that button export in formStatement is displayed$")
    public void checkThatButtonExportInFormStatementIsDisplayed() {
        buttonExportInFormStatement.shouldBe(visible);
    }

    @And("^click close form statement$")
    public void clickCloseFormStatement() {
        closeToFormStatement.click();
    }

    @And("^click export in formStatement$")
    public void clickExportInFormStatement() {
        buttonExportInFormStatement.click();
    }

    @And("^check pop-up message at statement of request is displayed$")
    public void checkPopUpMessageAtStatementOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Подождите, файл формируется.")).waitUntil(visible, 10000);
//        notificationSecond.shouldHave(text("Отчет. Выписка из журнала заявок готов.")).findElementByLinkText("Скачать").isDisplayed();
    }
}

