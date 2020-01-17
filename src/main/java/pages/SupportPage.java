package pages;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class SupportPage {
    private SupportPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating SupportPage class.");
    }

    //Поле е мейл в форме обратно связи
    public static final SelenideElement emailFieldBackCall = $(By.xpath("//*[@id=\"email\"]"));
    // Поле телефон в форме обратной связи
    public static final SelenideElement phoneFieldBackCall = $(By.xpath("//*[@id=\"phone\"]"));
    // Поле тема в форме обратной связи
    public static final SelenideElement themeFieldBackCall = $(By.xpath("//*[@id=\"subject\"]"));
    // Поле текст сообщения в форме обратной связи
    public static final SelenideElement messageTextFieldBackCall = $(By.xpath("//*[@id=\"text\"]"));
    // Поле поиск в форме часто задаваемые вопросы
    public static final SelenideElement fieldSearchQuestions = $(By.xpath("//*[@id=\"search\"]"));
    // Кнопка развернуть все
    public static final SelenideElement buttonCollapseAllQuestions = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[1]/div[2]/button[3]"));
    //Кнопка Добавить вопрос ответ
    public static final SelenideElement buttonAddQuestion = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[1]/div[2]/button[2]"));
    //Кнопка удалить вопрос
    public static final SelenideElement deleteQuestion = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/button[1]"));
    //Кнопка раскрыть вопрос
    public static final SelenideElement collapseQuestion = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/button[2]"));
    //Кнопка закрыть форму вопросов и ответов
    public static final SelenideElement closeQuestions = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[1]/div"));
    //Текстовое поле текст вопроса в форме добавления нового вопроса
    public static final SelenideElement fieldQuestionTextAddQuestion = $(By.xpath("//*[@id=\"add-question\"]"));
    //Текстовое поле текст ответа в форме добавления нового вопроса
    public static final SelenideElement fieldAnswerTextAddQuestion = $(By.xpath("//*[@id=\"add-answer\"]"));
    //Кнопка удалить новый вопрос ответ
    public static final SelenideElement deleteNewQuestion = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[2]/div[3]/div[1]/div[2]/button[1]"));
    //Кнопка раскрыть новый вопрос ответ
    public static final SelenideElement collapseNewQuestion = $(By.xpath("//*[@id=\"root\"]/div/div/nav/div[6]/div[2]/div[4]/div[2]/div[2]/div[2]/div[3]/div[1]/div[2]/button[2]"));
    //Блок воспроизведения звука
    public static final SelenideElement soundBoxSettings = $(By.xpath("//*[@id=\"listen\"]"));
    //Чек бокс включить/выключить уведомление о звуке
    public static final SelenideElement checkBoxSoundOff = $(By.xpath("//*[@id=\"settings\"]/div[2]/div[2]/div[1]/label[2]/span"));
    //Колонка для выбора звука
    public static final SelenideElement checkBoxChooseSound = $(By.xpath("//*[@id='sound']"));
    //Выбор звука
    public static final SelenideElement chooseSound = $(By.xpath("//div[@class='settings-panel']//audio"));
    //Чек бокс звуковые уведомления Выключен
    public static final SelenideElement soundOff = $(By.xpath("//div[@class='settings-panel']//span[@class='ant-checkbox']"));
    //Чек бокс звуковые уведомления Включен
    public static final SelenideElement soundOn = $(By.xpath("//div[@class='settings-panel']//span[@class='ant-checkbox ant-checkbox-checked']"));
    //Кнопка выход в настройках
    public static final SelenideElement exitFormSettings = $(By.xpath("//*[@id=\"settings\"]/div[2]/div[1]/div"));
    //Кнопка закрыть окно поддержки
    public static final SelenideElement exitFormSupport = $(By.xpath("//*[@id=\"profile-menu\"]/div[1]/div[2]"));

}
