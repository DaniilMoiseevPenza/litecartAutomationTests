package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static pages.SupportPage.*;

public class SupportStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is displayed in form back call$")
    public void checkThatElementWithNameIsDisplayedInFormBackCall(String text) {
        $(By.xpath("//div[@id = 'feedback']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^click button with \"([^\"]*)\" in form call back$")
    public void clickButtonWithInFormCallBack(String buttonName) {
        $(By.xpath("//div[@id = 'feedback']//*[contains(text(),'" + buttonName + "')]//..")).click();
    }

    @And("^check that fieldEmail is displayed$")
    public void checkThatFieldEmailIsDisplayed() {
        emailFieldBackCall.shouldBe(visible);
    }

    @And("^check that fieldPhone is displayed$")
    public void checkThatFieldPhoneIsDisplayed() {
        phoneFieldBackCall.shouldBe(visible);
    }

    @And("^check that fieldTheme is displayed$")
    public void checkThatFieldThemeIsDisplayed() {
        themeFieldBackCall.shouldBe(visible);
    }

    @And("^check that fieldMessage is displayed$")
    public void checkThatFieldMessageIsDisplayed() {
        messageTextFieldBackCall.shouldBe(visible);
    }

    @And("^check that fieldSearch is displayed$")
    public void checkThatFieldSearchIsDisplayed() {
        fieldSearchQuestions.shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form questions$")
    public void checkThatElementWithNameIsDisplayedInFormQuestions(String text) {
        $(By.xpath("//div[@class = 'faq-panel']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^check that element collapseAll is displayed in form questions$")
    public void checkThatElementCollapseAllIsDisplayedInFormQuestions() {
        buttonCollapseAllQuestions.shouldBe(visible);
    }

    @And("^check that element addQuestion is displayed in form questions$")
    public void checkThatElementAddQuestionIsDisplayedInFormQuestions() {
        buttonAddQuestion.shouldBe(visible);
    }

    @And("^check that element collapseQuestion is displayed in form questions$")
    public void checkThatElementCollapseQuestionIsDisplayedInFormQuestions() {
        collapseQuestion.shouldBe(visible);
    }

    @And("^check that element deleteQuestion is displayed in form questions$")
    public void checkThatElementDeleteQuestionIsDisplayedInFormQuestions() {
        deleteQuestion.shouldBe(visible);
    }

    @And("^click callapse all in form question$")
    public void clickCallapseAllInFormQuestion() {
        buttonCollapseAllQuestions.click();
    }

    @And("^click close form question$")
    public void clickCloseFormQuestion() {
        closeQuestions.click();
    }

    @And("^click button with \"([^\"]*)\" in form question$")
    public void clickButtonWithInFormQuestion(String buttonName) {
        $(By.xpath("//div[@class = 'faq-panel']//*[contains(text(),'" + buttonName + "')]//..")).click();
    }

    @And("^click button add new question$")
    public void clickButtonAddNewQuestion() {
        buttonAddQuestion.click();
    }

    @And("^check that element that text \"([^\"]*)\" is displayed in form add question$")
    public void checkThatElementThatTextIsDisplayedInFormAddQuestion(String text) {
        $(By.xpath("//div[@class = 'add-question']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^click button with text \"([^\"]*)\" in form add question$")
    public void clickButtonWithTextInFormAddQuestion(String buttonName) {
        $(By.xpath("//div[@class = 'add-question']//*[contains(text(),'" + buttonName + "')]//..")).click();
    }

    @And("^check that question text is displayed in form add question$")
    public void checkThatQuestionTextIsDisplayedInFormAddQuestion() {
        fieldAnswerTextAddQuestion.shouldBe(visible);
    }

    @And("^check that answer text is displayed in form add question$")
    public void checkThatAnswerTextIsDisplayedInFormAddQuestion() {
        fieldQuestionTextAddQuestion.shouldBe(visible);
    }

    @And("^type to input text \"([^\"]*)\" in field question in form add question$")
    public void typeToInputTextInFieldQuestionInFormAddQuestion(String questionText) {
        fieldQuestionTextAddQuestion.sendKeys(questionText);
    }

    @And("^type to input text \"([^\"]*)\" in field answer in form add question$")
    public void typeToInputTextInFieldAnswerInFormAddQuestion(String answertext) {
        fieldAnswerTextAddQuestion.sendKeys(answertext);
    }

    @And("^click button delete question in form new question$")
    public void clickButtonDeleteQuestioninFormNewQuestion() {
        deleteNewQuestion.click();
    }

    @And("^click collapse question in form new question$")
    public void clickCollapseQuestionInFormNewQuestion() {
        collapseNewQuestion.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form delete question$")
    public void checkThatElementWithNameIsDisplayedInFormDeleteQuestion(String text) {
        $(By.xpath("//div[@class='delete-question']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^click button with text \"([^\"]*)\" in form delete question$")
    public void clickButtonWithTextInFormDeleteQuestion(String buttonName) {
        $(By.xpath("//div[@class='delete-question']//*[contains(text(),'" + buttonName + "')]//..")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in form delete question$")
    public void checkThatElementWithNameIsNotDisplayedInFormDeleteQuestion(String text) {
        $(By.xpath("//div[@class='delete-question']//*[contains(text(),'" + text + "')]")).shouldNotBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in form questions$")
    public void checkThatElementWithNameIsNotDisplayedInFormQuestions(String text) {
        $(By.xpath("//div[@class='delete-question']//*[contains(text(),'" + text + "')]")).shouldNotBe(visible);
    }

    @And("^type to input text \"([^\"]*)\" in field search in form questions$")
    public void typeToInputTextInFieldSearchInFormQuestions(String text) {
        fieldSearchQuestions.sendKeys(text);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form settings$")
    public void checkThatElementWithNameIsDisplayedInFormSettings(String text) {
        $(By.xpath("//div[@class='settings-panel']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^check that element listen box is displayed$")
    public void checkThatElementListenBoxIsDisplayed() {
        soundBoxSettings.shouldBe(visible);
    }

    @And("^check that element check box sound off is displayed$")
    public void checkThatElementCheckBoxSoundOffIsDisplayed() {
        checkBoxSoundOff.shouldBe(visible);
    }

    @And("^check that element select sound is displayed$")
    public void checkThatElementSelectSoundIsDisplayed() {
        checkBoxChooseSound.shouldBe(visible);
    }

    @And("^click button with text \"([^\"]*)\" in settings$")
    public void clickButtonWithTextInSettings(String text) {
        $(By.xpath("//div[@class='settings-panel']//*[contains(text(),'" + text + "')]//..")).click();
    }

    @And("^click button sound off$")
    public void clickButtonSoundOff() {
        checkBoxSoundOff.click();
    }

    @And("^click choose sound$")
    public void clickChooseSound() {
        checkBoxChooseSound.click();
    }

    @And("^check that audio in settings is \"([^\"]*)\"$")
    public void checkThatAudioInSettingsIs(String audio) {
        chooseSound.shouldHave(attribute("src", "http://213.79.88.85/static/media/" + audio));
    }

    @And("^click button with \"([^\"]*)\" in form settings$")
    public void clickButtonWithInFormSettings(String sound) {
        $(By.xpath("//select[@class='sound']//*[contains(text(),'" + sound + "')]")).click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in form message settings$")
    public void checkThatElementWithNameIsDisplayedInFormMessageSettings(String text) {
        $(By.xpath("//div[@class='sent_settings']//*[contains(text(),'" + text + "')]")).shouldBe(visible);
    }

    @And("^click button with name \"([^\"]*)\" in form message settings$")
    public void clickButtonWithNameInFormMessageSettings(String text) {
        $(By.xpath("//div[@class='sent_settings']//*[contains(text(),'" + text + "')]//..")).click();
    }

    @And("^check that button sound off is displayed in form settings$")
    public void checkThatButtonSoundOffIsDisplayedInFormSettings() {
        soundOff.shouldBe(visible);
    }

    @And("^check that button sound on is displayed in form settings$")
    public void checkThatButtonSoundOnIsDisplayedInFormSettings() {
        soundOn.shouldBe(visible);
    }

    @And("^click button exitSettings$")
    public void clickButtonExitSettings() {
        exitFormSettings.click();
    }

    @And("^click to close support$")
    public void clickToCloseSupport() {
        exitFormSupport.click();
    }
}
