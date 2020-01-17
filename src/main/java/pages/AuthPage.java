package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;


public class AuthPage {
    private AuthPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating AuthPage class.");
    }

    //Кнопка "Войти"
    //   public static final SelenideElement enterButton = $(By.cssSelector(".login-form__footer>button"));
    //Текстбокс "Логин"
    public static final SelenideElement login = $(By.xpath("//input[@placeholder='Логин']"));
    //Текстбокс "Пароль"
    public static final SelenideElement password = $(By.xpath("//input[@placeholder='Пароль']"));
    //Верхняя надпись "Единый диспетчерский центр"
    //   public static final SelenideElement dcText =  $(By.cssSelector(".masters > a > b"));
    //Всплывающее сообщение при неправильном вводе данных в поля авторизации
    //  public static final SelenideElement wrongData = $(By.className("login-form__error-text"));
    //Чекбокс "Оставаться в системе"
    //   public static final SelenideElement remainInTheSystem = $(By.className("login-form__checkbox-label"));


    //@FindBy(xpath = "//*[@id=\"root\"]/div/div[5]/div/div/div/form/div[1]/div[1]/div[2]/div[2]/input")
    // public static final SelenideElement password;


}
