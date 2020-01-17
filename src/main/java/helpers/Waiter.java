package helpers;

import com.codeborne.selenide.WebDriverRunner;
import org.openqa.selenium.support.ui.WebDriverWait;


public class Waiter {
    private Waiter() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating Waiter class.");
    }

    public static WebDriverWait getWaiter(int seconds) {
        return new WebDriverWait(WebDriverRunner.getWebDriver(), seconds);
    }

}
