package steps;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.attribute;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selenide.$;
import static pages.ViewConsultationPage.*;
import static pages.ViewConsultationPage.cardOfConsultationHyperlinkOff;

public class ViewModalOffStepDefinitions {


    @And("^check that element with name \"([^\"]*)\" is visible in modalWindowOff$")
    public void checkThatElementWithNameIsVisibleInModalWindowOff(String text) {
        String xpath = "//section[@id='view-disabling']//*[contains(text(), '" + text + "')]";
        $(By.xpath(xpath)).shouldBe(visible);
    }

    @And("^click to close modal card off$")
    public void clickToCloseModalCardOff() {
        $(By.xpath("//section[@id='view-disabling']//button")).click();
    }

    @And("^click button with \"([^\"]*)\" in modalWindowOff$")
    public void clickButtonWithInModalWindowOff(String text) {
        $(byText(text)).click();
    }


    @And("^check that element with name \"([^\"]*)\" is not displayed in modalWindowOff$")
    public void checkThatElementWithNameIsNotDisplayedInModalWindowOff(String text) {
        $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + text + "')]")).shouldNotBe(visible);
    }

    @And("^click to hyperlinkOff$")
    public void clickToHyperlinkOff() {
        cardOfConsultationHyperlinkOff.click();
    }

    @And("^check that element with name \"([^\"]*)\" is disabled in modalWindowOff$")
    public void checkThatElementWithNameIsDisabledInModalWindowOff(String fieldName) {

        if (fieldName.equals("Дата отключения") || fieldName.equals("Планируемая дата включения") || fieldName.equals("Фактическая дата включения")) {
            $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + fieldName + "')]/..//input)")).shouldHave(attribute("disabled", "true"));
        }
    }


//
//    @And("^check that element with name \"([^\"]*)\" is disabled in modalWindowOff$")
//    public void checkThatElementWithNameIsDisabledInModalWindowOff(String fieldName)  {
//        if (fieldName.equals("Ведёт работы")) {
//            $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + fieldName + "')]/..//td[2]//input")).shouldHave(attribute("class", "ant-input ant-input-disabled ant-select-search__field"));
//        } else if (fieldName.equals("Тип отключения")) {
//            $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '"+ fieldName +"')]/..//td[2]//span")).shouldHave(attribute("class", "ant-select ant-select-disabled ant-select-allow-clear"));
//        } else if (fieldName.equals("Вид отключения")) {
//            if($(By.xpath("//span[.='Аварийное отключение']//..")).shouldHave(attribute("class","ant-radio-wrapper ant-radio-wrapper-checked ant-radio-wrapper-disabled")))
//                $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + fieldName + "')]/..//td[2]//label[1]/span")).shouldHave(attribute("class", "ant-radio ant-radio-checked ant-radio-disabled"));
//             else
//                $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + fieldName + "')]/..//td[2]//label[2]/span")).shouldHave(attribute("class","ant-radio ant-radio-disabled"));
//        } else if (fieldName.equals("Дата отключения") || fieldName.equals("Планируемая дата включения") || fieldName.equals("Фактическая дата включения")) {
//            $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '"+ fieldName +"')]/..//td[2]//input")).shouldHave(attribute("class", "ant-calendar-picker-input ant-input ant-input-disabled"));
//        } else
//            $(By.xpath("//section[@id='view-disabling']//*[contains(text(), '" + fieldName + "')]/..//td[2]//textarea")).shouldHave(attribute("class", "ant-input ant-input-disabled"));
//
//        }
}

