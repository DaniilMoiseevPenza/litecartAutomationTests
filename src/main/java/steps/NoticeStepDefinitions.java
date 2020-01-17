package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.not;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.DispatcherCentrPage.waiter;
import static pages.NoticePage.*;
import static pages.NoticePage.buttonNoticeOk;


public class NoticeStepDefinitions {


    @And("^click buttonNoticeOk$")
    public void clickButtonNoticeOk() {
        waiter.waitUntil(not(visible), 10000);
        buttonNoticeOk.click();
    }

    @And("^click \"([^\"]*)\" in notice$")
    public void clickInNotice(String text) {
        $(By.xpath("//section[@class='marked-as-read']//button[.='" + text + "']")).waitUntil(visible, 10000);
        if ($(By.xpath("//section[@class='marked-as-read']//button[.='" + text + "']")).isDisplayed())
            $(By.xpath("//section[@class='marked-as-read']//button[.='" + text + "']")).click();
    }

    @And("^check that text \"([^\"]*)\" is displayed in notice$")
    public void checkThatTextIsDisplayedInNotice(String noticeText) {
        $(By.xpath("//div[@class= 'ant-message-notice']//*[contains(text(),'" + noticeText + "')]")).shouldBe(visible);
    }
}
