package steps;

import com.codeborne.selenide.WebDriverRunner;
import cucumber.api.java.en.And;
import helpers.AppData;

import static com.codeborne.selenide.Condition.visible;
import static pages.AuthPage.*;


public class AuthStepDefinitions {

    GeneralStepDefinitions generalSteps = new GeneralStepDefinitions();
    NoticeStepDefinitions noticeSteps = new NoticeStepDefinitions();

    // Блок шагов для страницы авторизации
    @And("^type to input with name login text: \"([^\"]*)\"$")
    public void typeToInputWithNameLoginText(String authLogin) {
        if (login.isDisplayed())
            login.sendKeys(authLogin);
        else {
            generalSteps.logout();
            login.sendKeys(authLogin);
        }
    }

    @And("^type to input with name password text: \"([^\"]*)\"$")
    public void typeToInputWithNamePasswordText(String authPassword) {
        password.sendKeys(authPassword);
    }

    @And("^wait page autorization$")
    public void waitPageAutorization() {
        login.waitUntil(visible, 10000);
    }

    @And("^login \"([^\"]*)\"$")
    public void login(String userRole)   {
        if(WebDriverRunner.url().contains("login")) {
            switch (userRole) {
                case "одс":
                    typeToInputWithNameLoginText(AppData.LOGIN_ODS);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    generalSteps.checkThatElementWithNameIsDisplayed("Информация");
                    noticeSteps.clickInNotice("пометить как прочитанное");
                    break;

                case "рдс":
                    typeToInputWithNameLoginText(AppData.LOGIN_RDS);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    break;

                case "цдс":
                    typeToInputWithNameLoginText(AppData.LOGIN_CDS);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    break;

                case "стп":
                    typeToInputWithNameLoginText(AppData.LOGIN_STP);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    break;

                case "кц":
                    typeToInputWithNameLoginText(AppData.LOGIN_KC);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    break;

                case "ас":
                    typeToInputWithNameLoginText(AppData.LOGIN_AS);
                    typeToInputWithNamePasswordText(AppData.PASSWORD);
                    break;

                default:
                    throw new IllegalArgumentException("No such user role: " + userRole + " in system");
            }
            generalSteps.pressButtonWithText("Войти");
        }

    }
}
