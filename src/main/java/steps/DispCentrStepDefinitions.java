package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;

import static com.codeborne.selenide.CollectionCondition.sizeGreaterThan;
import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selectors.byText;
import static com.codeborne.selenide.Selectors.byTitle;
import static com.codeborne.selenide.Selenide.*;
import static pages.DispatcherCentrPage.*;
import static pages.DispatcherCentrPage.advancedFilter;
import static pages.DispatcherCentrPage.choiceOfColumns;
import static pages.DispatcherCentrPage.collapseAndExpandMenu;
import static pages.DispatcherCentrPage.export;
import static pages.DispatcherCentrPage.find;
import static pages.DispatcherCentrPage.firstRequest;
import static pages.DispatcherCentrPage.formOfFilterOfConsultation;
import static pages.DispatcherCentrPage.goToFirstPage;
import static pages.DispatcherCentrPage.goToLastPage;
import static pages.DispatcherCentrPage.nextPage;
import static pages.DispatcherCentrPage.prevPage;
import static pages.DispatcherCentrPage.rubricActive;
import static pages.DispatcherCentrPage.rubricAtTheControl;
import static pages.DispatcherCentrPage.rubricCancelled;
import static pages.DispatcherCentrPage.rubricClosed;
import static pages.DispatcherCentrPage.rubricConsultation;
import static pages.DispatcherCentrPage.rubricExecution;
import static pages.DispatcherCentrPage.rubricNew;
import static pages.DispatcherCentrPage.rubricReject;
import static pages.DispatcherCentrPage.rubricWork;
import static pages.DispatcherCentrPage.search;
import static pages.DispatcherCentrPage.tableStatus;
import static pages.DispatcherCentrPage.waiter;
import static pages.ExportRequestPage.notificationExport;
import static pages.FiltrDispatcherCentrPage.*;
import static pages.FiltrDispatcherCentrPage.tableColumm1;
import static pages.FiltrDispatcherCentrPage.tableColumm1Value2;
import static pages.FiltrDispatcherCentrPage.tableColumm1Value3;
import static pages.FiltrDispatcherCentrPage.tableColumm2;
import static pages.FiltrDispatcherCentrPage.tableColumm3;
import static pages.FiltrDispatcherCentrPage.tableColumm4;
import static pages.ViewAndUpdateRequestPage.*;
import static pages.ViewAndUpdateRequestPage.fieldDescription;


public class DispCentrStepDefinitions {


    // Блок шагов для страницы Диспетчерский центр
    @And("^check that element choice of columns is displayed$")
    public void checkThatElementSpisokKolonokIsDisplayed() {
        choiceOfColumns.shouldBe(visible);
    }


    @And("^check that element search is displayed$")
    public void checkThatElementSearchIsDisplayed() {
        search.should(exist);
    }

    @And("^check that element find is displayed$")
    public void checkThatElementFindIsDisplayed() {
        find.shouldBe(visible);
    }

    @And("^check that element advanced filter is displayed$")
    public void checkThatElementAdvancedFilterIsDisplayed() {
        advancedFilter.shouldBe(visible);
    }


    @And("^check that element export is displayed$")
    public void checkThatElementUnloadingIsDisplayed() {
        export.shouldBe(visible);
    }


    @And("^check that element arrow menu is displayed$")
    public void checkThatElementArrowMenuIsDisplayed() {
        collapseAndExpandMenu.should(exist);
    }

    @And("^click rubric new$")
    public void clickRubricNew() {
        rubricNew.click();
    }

    @And("^click rubric work$")
    public void clickRubricWork() {
        rubricWork.click();
    }

    @And("^click rubric execution$")
    public void clickRubricExecution() {
        rubricExecution.click();
    }

    @And("^click rubric closed$")
    public void clickRubricClosed() {
        rubricClosed.click();
    }

    @And("^click rubric reject$")
    public void clickRubricReject() {
        rubricReject.click();
    }

    @And("^click rubric cancelled$")
    public void clickRubricCancelled() {
        rubricCancelled.click();
    }

    @And("^click filter$")
    public void clickFilter() {
        waiter.waitUntil(not(visible), 1000000);
        if (!$(By.xpath("//*[@id=\"menu-filter\"]/div/div[2]/div[1]/div[3]/label")).isDisplayed()) {
            advancedFilter.click();
        }
    }

    @And("^click rubric control$")
    public void clickRubricControl() {
        rubricAtTheControl.click();
    }


    @And("^click rubric active$")
    public void clickRubricActive() {
        rubricActive.click();
    }

    @And("^check that element table grid new is displayed$")
    public void checkThatElementTableGridNewIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", "Новая"));

        }
    }

    @And("^check that element table grid work is displayed$")
    public void checkThatElementTableGridWorkIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", "Ожидает обработки"));
        }
    }

    @And("^check that element table grid execution is displayed$")
    public void checkThatElementTableGridExecutionIsDisplayed() {
        for (SelenideElement status : tableStatus) {
            waiter.waitUntil(not(visible), 10000);
            status.shouldHave(attribute("title", "В работе"));
        }
    }

    @And("^check that element table grid closed is displayed$")
    public void checkThatElementTableGridClosedIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", "Закрыта"));
        }
    }

    @And("^check that element table grid reject is displayed$")
    public void checkThatElementTableGridRejectIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", "Отклонена"));
        }
    }

    @And("^check that element table grid cancelled is displayed$")
    public void checkThatElementTableGridCancelledIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", "Отменена"));
        }
    }

    @And("^check that element table grid control is displayed$")
    public void checkThatElementTableGridControlIsDisplayed() {
        checkThatElementTableGridActiveIsDisplayed();
    }

    @And("^check that element table grid active is displayed$")
    public void checkThatElementTableGridActiveIsDisplayed() {
        waiter.waitUntil(not(visible), 10000);
        for (SelenideElement status : tableStatus) {
            status.shouldNotHave(attribute("title", "Отменена"));
            status.shouldNotHave(attribute("title", "Отклонена"));
            status.shouldNotHave(attribute("title", "Закрыта"));
        }
    }


    @And("^check counter at rubric new$")
    public void checkCounterAtRubricNew() {
        rubricNew.shouldHave(text("1"));
    }


    @And("^check the new application in grid is \"([^\"]*)\"$")
    public void checkTheNewApplicationInGrid(String request) {
        clickOnTheFirstRequest();
        fieldDescription.shouldHave(text(request));
    }

    //    @And("^click on the first request$")
//    public void clickOnTheFirstRequest()   {
//        tableStatus.get(0).click();
//    }
    @And("^click on the first request$")
    public void clickOnTheFirstRequest() {
        firstRequest.click();
    }


    @And("^check that flats in grid is \"([^\"]*)\"$")
    public void checkThatFlatsInGridIs(String flat) {
        for (SelenideElement status : tableColumm2) {
            status.shouldHave(attribute("title", flat));
        }
    }

    @And("^check that floors in grid is \"([^\"]*)\"$")
    public void checkThatFloorsInGridIs(String floor) {
        for (SelenideElement status : tableColumm3) {
            status.shouldHave(attribute("title", floor));
        }
    }

    @And("^check that enterances in grid is \"([^\"]*)\"$")
    public void checkThatEnterancesInGridIs(String enterance) {
        for (SelenideElement status : tableColumm4) {
            status.shouldHave(attribute("title", enterance));
        }
    }

    @And("^check that column in grid is \"([^\"]*)\"$")
    public void checkThatColumnIs(String value) {
        $$(By.xpath("//div[@class='react-grid-Viewport']//div[@title='"+value+"']")).shouldHave(sizeGreaterThan(0));
//        for (SelenideElement adress : $$(By.xpath("//div[@title='"+houseAddress+"']"))) {
//            adress.shouldHave(sizeGreaterThan(0));
//        }
    }

    @And("^check that phone in grid is \"([^\"]*)\"$")
    public void checkThatPhoneInGridIs(String phone) {
        for (SelenideElement status : tableColumm1) {
            Assert.assertEquals(phone, status.toString().substring(6, 6 + phone.length()));
        }
    }

    @And("^check that fio in grid is \"([^\"]*)\"$")
    public void checkThatFioInGridIs(String fio) {
        for (SelenideElement status : tableColumm1) {
            Assert.assertEquals(fio, status.toString().substring(6, 6 + fio.length()) );
        }
    }

    @And("^click choose colums$")
    public void clickChooseColums() {
        waiter.waitUntil(not(visible), 500000);
        choiceOfColumns.click();
    }

    @And("^check that type of request in grid is \"([^\"]*)\"$")
    public void checkThatTypeOfRequestInGridIs(String deffectType) {
        for (SelenideElement status : tableColumm1) {
            Assert.assertEquals(deffectType, status.toString().substring(6, 6 + deffectType.length()));
        }
    }

    @And("^check that element table grid \"([^\"]*)\" is displayed$")
    public void checkThatElementTableGridIsDisplayed(String rubric) {
        waiter.waitUntil(visible, 100000);
        if (waiter.isDisplayed())
            waiter.waitUntil(not(visible), 100000);
        tableStatus.get(0).waitUntil(visible, 15000);
        for (SelenideElement status : tableStatus) {
            status.shouldHave(attribute("title", rubric));
        }

    }

    @And("^check that element table grid not in \"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\" is displayed$")
    public void checkThatElementTableGridNotInIsDisplayed(String rubric1, String rubric2, String rubric3) {
        if (waiter.isDisplayed()) {
            waiter.waitUntil(not(visible), 100000);
        }
        for (SelenideElement status : tableStatus) {
            status.shouldNotHave(attribute("title", rubric1));
            status.shouldNotHave(attribute("title", rubric2));
            status.shouldNotHave(attribute("title", rubric3));
        }
    }

    @And("^click on first request$")
    public void clickOnFirstRequest() {
        if (waiter.isDisplayed()) {
            waiter.waitUntil(not(visible), 100000);
        }
        firstRequest.waitUntil(visible, 100000);
        firstRequest.click();
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in grid$")
    public void checkThatElementWithNameIsDisplayedInGrid(String text) {
        String xpath = "//div[@class='react-grid-Header']//*[.='" + text + "']";
        $(By.xpath(xpath)).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in blockDispCentr$")
    public void checkThatElementWithNameIsDisplayedInBlockDispCentr(String text) {
        String xpath = "//div[@class='app__logo']//*[.='" + text + "']";
        $(By.xpath(xpath)).shouldBe(visible);
    }


    @And("^click rubric consultation$")
    public void clickRubricConsultation() {
        rubricConsultation.click();
    }

    @And("^click rubric \"([^\"]*)\"$")
    public void clickRubric(String rubricName) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='left-panel']//*[.='" + rubricName + "']")).click();
    }


    @And("^check that element with name \"([^\"]*)\" is displayed in pagination$")
    public void checkThatElementWithNameIsDisplayedInPagination(String page) {
        waiter.waitUntil(not(visible), 10000);
        Assert.assertEquals(page, waiter.toString().substring(23, 33));
    }

    @And("^click next page$")
    public void clickNextPage() {
        nextPage.click();
    }

    @And("^click to go to last page$")
    public void clickToGoToLastPage() {
        goToLastPage.click();
    }

    @And("^click to go to prev page$")
    public void clickToGoToPrevPage() {
        prevPage.click();
    }

    @And("^click to go to first page$")
    public void clickToGoToFirstPage() {
        goToFirstPage.click();
    }

    @And("^check that form filter of consultation is not displayed$")
    public void checkThatFormFilterOfConsultationIsNotDisplayed() {
        formOfFilterOfConsultation.shouldNot(visible);
    }

    @And("^check that form filter of consultation is displayed$")
    public void checkThatFormFilterOfConsultationIsDisplayed() {
        formOfFilterOfConsultation.shouldBe(visible);
    }

    @And("^check that not data in gridConsultation$")
    public void checkThatNotDataInGridConsultation() {
        $(By.xpath("//div[@class='navigation no-pagination']")).shouldHave(text("Результаты не найдены"));
    }

    @And("^click exit$")
    public void clickExit() {
        $(byTitle("Выйти из системы")).click();
    }

    @And("^clear fieldSearchOnNumberRequest in startPage$")
    public void clearFieldSearchOnNumberRequestInStartPage() {
        search.clear();
    }

    @And("^check that last page in grid request is last$")
    public void checkThatLastPageInGridRequestIsLast() {
        waiter.waitUntil(not(visible), 10000);
        Assert.assertEquals(waiter.toString().substring(waiter.toString().indexOf(' ', 0), waiter.toString().indexOf(' ', 1)), waiter.toString().substring(waiter.toString().indexOf(' ', 3), waiter.toString().indexOf(' ', 4)));
    }


    @And("^scroll to column with name \"([^\"]*)\"$")
    public Void scrollToColumnWithName(String columnName) {
        waiter.waitUntil(not(visible), 10000);
        return executeJavaScript("arguments[0].scrollIntoView(true);", $(By.xpath("//div[@class='react-grid-Grid']//*[contains(text(),'" + columnName + "')]")));
    }

    @And("^check pop-up message about unfilled two fields is displayed$")
    public void checkPopUpMessageAboutUnfilledTwoFieldsIsDisplayed() {
        notificationExport.shouldHave(text("Не заполнены обязательные поля: Телефон, Тип заявки")).should(visible);
    }

    @And("^check pop-up message about unfilled phone is displayed$")
    public void checkPopUpMessageAboutUnfilledPhoneIsDisplayed() {
        notificationExport.shouldHave(text("Не заполнены обязательные поля: Телефон")).should(visible);
    }


    @And("^copy number request from notification in Clipboard$")
    public void copyNumberRequestFromNotificationInClipboard() {
        String number = $(By.xpath("//*[@id='required']/div")).getText().substring(20, 39);
        StringSelection stringSelection = new StringSelection(number);
        Clipboard clpbrd = Toolkit.getDefaultToolkit().getSystemClipboard();
        clpbrd.setContents(stringSelection, null);
    }

    @And("^type to input with name searchOnNumberRequest text from number$")
    public void typeToInputWithNameSearchOnNumberRequestTextFromNumber() {
        search.clear();
        search.sendKeys(Keys.CONTROL + "v");
    }

    @And("^check counter at rubric waiting for processing$")
    public void checkCounterAtRubricWaitingForProcessing() {
        rubricWork.shouldHave(text("1"));
    }

    @And("^check counter at rubric in work$")
    public void checkCounterAtRubricInWork() {
        rubricExecution.shouldHave(text("1"));
    }

    @And("^check counter at rubric close$")
    public void checkCounterAtRubricClose() {
        rubricClosed.shouldHave(text("1"));
    }

    @And("^click refresh$")
    public void clickRefresh() {
//        Actions actions = new Actions(driver);
//        actions.keyDown(Keys.CONTROL).sendKeys(Keys.F5).perform();
        refresh();

    }

    @And("^check pop-up message at close of request is displayed$")
    public void checkPopUpMessageAtCloseOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была закрыта")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at accept of request is displayed$")
    public void checkPopUpMessageAtAcceptOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была принята")).waitUntil(visible, 15000);
    }

    @And("^check pop-up message at execution of request is displayed$")
    public void checkPopUpMessageAtExecutionOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была передана на исполнение")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at cancel of request is displayed$")
    public void checkPopUpMessageAtCancelOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была отменена")).waitUntil(visible, 10000);
    }

    @And("^check counter at rubric cancel$")
    public void checkCounterAtRubricCancel() {
        rubricCancelled.shouldHave(text("1"));
    }

    @And("^check pop-up message at send to AS of request is displayed$")
    public void checkPopUpMessageAtSendToASOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была отправлена в АС")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at reject of request is displayed$")
    public void checkPopUpMessageAtRejectOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была отклонена")).waitUntil(visible, 10000);
    }

    @And("^check counter at rubric reject$")
    public void checkCounterAtRubricReject() {
        rubricReject.shouldHave(text("1"));
    }

    @And("^check pop-up message at free/pay of request is displayed$")
    public void checkPopUpMessageAtFreePayOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Для закрытия заявки необходимо присвоить признак \"Платная\" или \"Бесплатная\"")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at status pay is displayed$")
    public void checkPopUpMessageAtStatusPayIsDisplayed() {
        notificationExport.shouldHave(text("Пожалуйста, укажите статус оплаты")).waitUntil(visible, 10000);

    }

    @And("^check pop-up message at status pay second is displayed$")
    public void checkPopUpMessageAtStatusPaySecondIsDisplayed() {
        notificationExport.shouldHave(text("Невозможно закрыть платную заявку со статусом оплаты \"Не оплачено\"")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at fill the cost is displayed$")
    public void checkPopUpMessageAtFillTheCostIsDisplayed() {
        notificationExport.shouldHave(text("Пожалуйста, укажите согласованную стоимость")).waitUntil(visible, 10000);
    }


    @And("^check that column \"([^\"]*)\" is \"([^\"]*)\" in first line$")
    public void checkThatColumnIsInFirstLine(String nameOfColumn, String value) {
        $(By.xpath("//div[@class='react-grid-Grid']//div[contains (text(), '" + nameOfColumn + "')]/ancestor::div[@class='react-grid-Viewport']//div/span/div/span")).shouldHave(text(value));

    }

    @And("^check pop-up message about field filling is displayed$")
    public void checkPopUpMessageAboutFieldFillingIsDisplayed() {
        notificationExport.shouldHave(text("Заполните, пожалуйста, поле 'Заявка выполнена'")).waitUntil(visible, 10000);
    }

    @And("^check notification about created off$")
    public void checkNotificationAboutCreatedOff() {
        notificationExport.shouldHave(text("По данному адресу существует отключение по выбранной категории дефекта")).waitUntil(visible, 10000);
    }

    @And("^check pop-up message at update of request is displayed$")
    public void checkPopUpMessageAtUpdateOfRequestIsDisplayed() {
        notificationExport.shouldHave(text("Заявка была обновлена")).waitUntil(visible, 10000);
    }

    @And("^check that button with text \"([^\"]*)\" is not displayed$")
    public void checkThatButtonWithTextIsNotDisplayed(String buttonText) {
        $(byText(buttonText)).shouldNotBe(visible);
    }


    @And("^check that column \"([^\"]*)\" is not \"([^\"]*)\" and \"([^\"]*)\" and \"([^\"]*)\"$")
    public void checkThatColumnIsNotAndOr(String columnName, String value1, String value2, String value3) {
        $(By.xpath("//*[@class='react-grid-HeaderCell']/div[.='" + columnName + "']")).shouldHave(text(columnName));
        for (int i = 0; i < tableColumm1.size(); i++) {
            tableColumm1.get(i).shouldNotHave(text(value1), text(value2), text(value3));
        }
//        ElementsCollection columnData = $$(By.xpath("//*[@class='react-grid-Cell__value']//*[.='" + value1 + "' && .='" + value2 + "' && .='" + value3 + "'"));
//        String s1 = columnData.get(0).toString().toLowerCase().substring(6, 6 + value1.length());
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in top$")
    public void checkThatElementWithNameIsDisplayedInTop(String elementName) {
        // $(By.xpath("//div[@class='user-info']//div[.='"+elementName+"']")).waitUntil(visible, 10000);
        if ($(By.xpath("//div[@class='user-info']//div[.='" + elementName + "']")).isDisplayed())
            $(By.xpath("//div[@class='user-info']//div[.='" + elementName + "']")).shouldBe(visible);
    }

    @And("^check that region in grid is \"([^\"]*)\" in dispCentr$")
    public void checkThatRegionInGridIsInDispCentr(String text) {
        waiter.waitUntil(not(visible), 10000);
        Assert.assertEquals(text, tableColumm1.get(0).getText());
        for (SelenideElement region : tableColumm1) {
            Assert.assertEquals(text, region.getText());
        }
    }


    @And("^check that district in grid is \"([^\"]*)\" in dispCentr$")
    public void checkThatDistrictInGridIsInDispCentr(String text) {
        waiter.waitUntil(not(visible), 10000);
        Assert.assertEquals(text,tableColumm1Value2.get(0).getText());
        for (SelenideElement district : tableColumm1Value2) {
            Assert.assertEquals(text, district.getText() );
        }
    }

    @And("^check that ods in grid is \"([^\"]*)\" in dispCentr$")
    public void checkThatOdsInGridIsInDispCentr(String text) {
        waiter.waitUntil(not(visible), 10000);
        Assert.assertEquals(text, tableColumm1Value3.get(0).getText().substring(12, 20));
        for (SelenideElement ods : tableColumm1Value3) {
            Assert.assertEquals(text, ods.getText().substring(12, 20));
        }
    }

    @And("^check that element with name \"([^\"]*)\" is displayed in head grid$")
    public void checkThatElementWithNameIsDisplayedInHeadGrid(String headerText) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='react-grid-Header']//*[contains(text(),'" + headerText + "')]")).shouldBe(visible);
    }

    @And("^check that element with name \"([^\"]*)\" is not displayed in head grid$")
    public void checkThatElementWithNameIsNotDisplayedInHeadGrid(String headerText) {
        waiter.waitUntil(not(visible), 10000);
        $(By.xpath("//div[@class='react-grid-Header']//*[contains(text(),'" + headerText + "')]")).shouldNotBe(visible);
    }
}
















/*

        System.out.println("Новая");
        Scanner in = new Scanner(System.in);
        String string = in.nextLine();
        String[] words = string.split("\\s+");
        HashMap<String, Integer> wordToCount = new HashMap<>();
        for (String word : words)
        {
            if (!wordToCount.containsKey(word))
            {
                wordToCount.put(word, 0);
            }
            wordToCount.put(word, wordToCount.get(word) + 1);
        }
        for (String word : wordToCount.keySet())
        {
            System.out.println(word + " " + wordToCount.get(word));
        }







 /*And("^check that element table grid new is displayed$")
    public void checkThatElementTableGridNewIsDisplayed()  {
     List<WebElement> tableGrid = driver.findElements(By.xpath("//*[@id=\"root\"]/div/div[6]/div/div[2]/div/div/div[1]/div[2]/div[1]"));
     int i = driver.findElements(By.xpath("//*[@id=\"root\"]/div/div[6]/div/div[2]/div/div/div[1]/div[2]/div[1]")).size;
            for (WebElement element : tableGrid) {
                System.out.println(element.getText());
                assertTrue(element.getText().contains("Новая"));
}
}











    //Конец блока шагов для диспетчерского центра

/*
    @Given("^open page test.test.edc.altarix.org$")
    public void openPageTestTestEdcAltarixOrg(int arg0)  {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }


    @Given("^open test.ezd.altarix\\.org/$")
    public void openEzdAltarixOrg() throws  Throwable{
        open("http://test.ezd.altarix.org/");
    }

    @Given("^press button with text \"([^\"]*)\" on \"([^\"]*)\"$")
    public void logout(String button, String page)  {
        sleep(500);
        authpage.ItemMenuLogout.click();
        if ("домашней странице".equals(page) || (authpage.logout.getText().equals(button))) {
            authpage.logout.waitUntil(Condition.visible,6000).click();
        }
    }

    @And("^check that element with name \"([^\"]*)\" is displayed$")
    public void checkThatElementWithNameIsDisplayed(String elementName)  {
        authpage.enterToAuthForm.getText().contains(elementName);
    }

    @And("^press button with text Войти on \"([^\"]*)\"$")
    public void pressButtonToAuthForm( String page)  {
        if ("стартовая страница".equals(page)) {
            sleep(1000);
            authpage.enterToAuthForm.click();
        }
    }

    @And("^type to input with name login text: \"([^\"]*)\"$")
    public void typeToInputWithNameLogin(String text)  {
        sleep(1000);
        authpage.login.sendKeys(text);
    }

    @And("^type to input with name password text: \"([^\"]*)\"$")
    public void typeToInputWithNamePassword(String text)  {
        sleep(1000);
        authpage.password.sendKeys(text);
    }

    @When("^press button with text ВОЙТИ on \"([^\"]*)\"$")
    public void pressButtonToHome( String page)  {
        if ("страница авторизации".equals(page))
            authpage.enterToHome.click();
    }

    @Then("^go to home page \"([^\"]*)\"$")
    public void GoToHomePage(String url) {
        try {
            sleep(3000);
            String currentUrl = url();
            assertThat(currentUrl, containsString(url));
            attachment.makeScreenShot();
        } catch (Exception e) {
            attachment.makeAttach(e.getMessage());
            throw e;
        }
    }

    @Then("^displays a text message \"([^\"]*)\"$")
    public void InvalidMessage(String text)  {
        sleep(500);
        authpage.InvalidLoginAndPassword.getText().equals(text);
        attachment.makeScreenShot();
    }

    @Given("^open stable.ezd.altarix.org/$")
    public void openStableEzdAltarixOrg()  {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

 */
