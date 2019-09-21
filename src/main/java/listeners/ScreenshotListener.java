package listeners;

import com.codeborne.selenide.WebDriverRunner;

import io.qameta.allure.Attachment;

import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;


public class ScreenshotListener extends RunListener {

    @Override
    public void testFailure(Failure failure) {
        makeScreenshot();
    }

    @Attachment(value = "Page screenshot", type = "image/png")
    private byte[] makeScreenshot() {
        return ((TakesScreenshot) WebDriverRunner.getWebDriver()).getScreenshotAs(OutputType.BYTES);
    }

}
