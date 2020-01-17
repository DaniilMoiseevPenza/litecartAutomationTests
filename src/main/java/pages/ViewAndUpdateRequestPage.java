package pages;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

public class ViewAndUpdateRequestPage {
    private ViewAndUpdateRequestPage() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating ViewAndUpdateRequestPage class.");
    }


    //Кнопка Свернуть и Развернуть (карточка заявки)
    public static final SelenideElement collapseAndExpandRequest = $(By.cssSelector(".request-view > button"));
    //Кнопка Следующая заявка (карточка заявки)
    public static final SelenideElement nextRequest = $(By.cssSelector(".request-view > div.btn-group > button.next"));
    //Кнопка Предыдущая заявка (карточка заявки)
    public static final SelenideElement prevRequest = $(By.xpath("//button[@class='prev']"));
    //Запись Заявка № от (дата)
    public static final SelenideElement titleOfRequest = $(By.cssSelector(".request-view > div.btn-group > span"));
    //Надпись ОДС
    //  public static final SelenideElement controllerOfficeText = $(byClassName("ОДС"));
    //Надпись Управляющая компания
    //   public static final SelenideElement managementCompanyText = $(byClassName("Управляющая компания"));
    //Надпись Тип заявки (категория)
    public static final SelenideElement typeRequestText = $(By.xpath("//*[@class=\"card\"]//*[contains(text(),'Тип заявки (категория)')]"));
    //Надпись Дефекта
    //  public static final SelenideElement typeDefectText = $(byClassName("Тип дефекта"));
    //Надпись Описание
    //  public static final SelenideElement descriptionText = $(byClassName("Описание"));
    //Надпись Приоритет
    //  public static final SelenideElement priorityText = $(byClassName("Приоритет"));
    //Надпись Статус
    // public static final SelenideElement statusText = $(byClassName("Статус"));
    //Надпись Платность
    //   public static final SelenideElement payText = $(byClassName("Платность"));
    //Надпись Желаемое время
    //  public static final SelenideElement desiredTimeText = $(byClassName("Желаемое время"));
    //Надпись Адрес
    //   public static final SelenideElement addressText = $(byClassName("Адрес"));
    //Надпись Этаж
    //  public static final SelenideElement floorText = $(byClassName("Этаж"));
    //Надпись Квартира
    //  public static final SelenideElement flatText = $(byClassName("Квартира"));
    //Надпись Подъезд
    //   public static final SelenideElement entranceText = $(byClassName("Подъезд"));
    //Надпись Код домофона
    //  public static final SelenideElement doorphoneCodeText = $(byClassName("Код домофона"));
    //Надпись Контактное лицо
    //  public static final SelenideElement contactPersonText = $(byClassName("Контактное лицо"));
    //Надпись Основной телефон
    //  public static final SelenideElement mainPhoneText = $(byClassName("Основной телефон"));
    //Надпись Дополнительный телефон
//    public static final SelenideElement additionalPhoneText = $(byClassName("Дополнительный телефон"));
    //Надпись Согласованная стоимость для платных заявок
    //  public static final SelenideElement agreedCostText = $(byClassName("Согласованная стоимость"));
    //Надпись Оплата картой для платных заявок
    //  public static final SelenideElement paymentByCardText = $(byClassName("Оплата картой"));
    //Надпись Статус оплаты для платных заявок
    // public static final SelenideElement paymentStatusText = $(byClassName("Статус оплаты"));
    //Надпись Принял заявку
    //   public static final SelenideElement acceptedRequestText = $(byClassName("Принял заявку"));
    //Надпись Источник
    //   public static final SelenideElement sourceText = $(byClassName("Источник"));
    //Надпись Исполнитель
    public static final SelenideElement executorText = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(3) > td.content > div > div > div"));
    //Надпись Вид выполненных работ для статуса "В работе", "Закрыта"
    //  public static final SelenideElement typeOfWorkPerformedText = $(byClassName("Вид выполненных работ"));
    //Надпись Причина отмены
    //   public static final SelenideElement reasonOfCancelText = $(byClassName("Причина отмены"));
    //Надпись Причина отклонения
    //  public static final SelenideElement reasonOfRejectionText = $(byClassName("Причина отклонения"));
    //Надпись Оценка для статуса "Закрыта"
    //   public static final SelenideElement assessmentText = $(byClassName("Оценка"));
    //Надпись Отзыв о работе для статуса "Закрыта"
    // public static final SelenideElement reviewOfWorkText = $(byClassName("Отзыв о работе"));
    //Надпись Оставить комментарий
    //  public static final SelenideElement leaveCommentText = $(byClassName("Оставить комментарий"));
    //Надпись Комментарии
    //   public static final SelenideElement commentText = $(byClassName("Комментарии:"));
    //Поле Описание
    public static final SelenideElement fieldDescription = $(By.xpath("//*[@id=\"root\"]/div/div/div/div/div[2]/div[1]/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div[6]/div/div/span/div"));
    //Поле Адрес
    public static final SelenideElement fieldAddress = $(By.xpath("//td[contains(text(),'Адрес')]"));
    //Поле Комментарий к адресу
    public static final SelenideElement fieldCommentOnTheAddress = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(10) > td.content > input"));
    //Поле Этаж
    public static final SelenideElement fieldFloor = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(12) > td.content > input"));
    //Поле Квартира
    public static final SelenideElement fieldFlat = $(By.cssSelector(".card > div.info > div > table > tbody > tr:nth-child(13) > td.content > input"));
    //Поле Подъезд
    public static final SelenideElement fieldEntrance = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(11) > td.content > input"));
    //поле Код домофона
    public static final SelenideElement fieldIntercom = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(13) > td.content > input"));
    //Поле Контактное лицо
    // public static final SelenideElement fieldContactPerson = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(14) > td.content > input"));
    //Поле Дополнительный телефон
    public static final SelenideElement fieldAdditionalPhone = $(By.xpath("//*[@id=\"phone-main\"]"));
    //Поле Вид выполненных работ для статуса "В работе", "Закрыта"
    //  public static final SelenideElement fieldTypeOfWorkPerformed = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(23) > td.content > input"));
    //Поле Отзыв о работе для статуса "Закрыта"
    public static final SelenideElement fieldReview = $(By.xpath("//div[@class='card']//*[contains(text(),'Отзыв о работе')]/..//textarea"));
    //Поле Оставить комментарий
    //  public static final SelenideElement fieldLeaveComment = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(27) > td:nth-child(2) > textarea"));
    //Первая строка таблицы с гридом заявок
    public static final SelenideElement firstLineWithRequest = $(By.cssSelector(".react-grid-Cell--locked > div > div > span > div"));
    //Номер заявки
    //  public static final SelenideElement numberOfRequest = $(By.cssSelector(".request-view > div.card > div.id > a"));
    //кнопка Добавить комментарий
    public static final SelenideElement addTheComment = $(By.xpath("//div[@class='card']//*[contains(text(),'Добавить комментарий')]"));
    //Гиперссылка "Показать историю/Скрыть историю"
    public static final SelenideElement showStory = $(By.cssSelector(".info > div > table > tbody > tr:nth-child(25) > td > span"));
    //Гиперссылка "Показать историю исполнения"
    //public static final SelenideElement showPerformanceStory = $(By.cssSelector("#request_id > div.info > div:nth-child(2) > div:nth-child(2) > a"));
    //Кнопка Принять заявку в статусе Новая
    public static final SelenideElement buttonAcceptRequest = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(5)"));
    //Кнопка Отправить в АС
    //  public static final SelenideElement buttonSendToAs = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(1)"));
    //Кнопка Сохранить
    public static final SelenideElement buttonSave = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.footer > button:nth-child(2)"));
    //Кнопка Сохранить в отклонены/отменены
    public static final SelenideElement buttonSaveInReject = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(1)"));
    //Кнопка Сохранить в статусе В работе
    public static final SelenideElement buttonSaveInExecution = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(2)"));
    //Кнопка Сохранить в статусе Закрыта
    public static final SelenideElement buttonSaveInClosed = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(1)"));
    //Кнопка Создать консультацию
    // public static final SelenideElement buttonCreateConsultation = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(3)"));
    //Кнопка Проблемная ситуация
    // public static final SelenideElement buttonProblemSituation = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(4)"));
    //Кнопка Копировать заявку
    //  public static final SelenideElement buttonCopyRequest = $(By.id("#copy"));
    //Кнопка Печать в статусе Новая/Ожидает обработки
    //  public static final SelenideElement buttonPrintingNew = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(7))"));
    //Кнопка Печать в статусе В работе
    //  public static final SelenideElement buttonPrintingClosed = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(5))"));
    //Кнопка Печать в статусе Закрыта/Отклонена/Отменена
    // public static final SelenideElement buttonPrintingInWork = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(2))"));
    //Кнопка Отменить
    // public static final SelenideElement buttonCancel = $(By.cssSelector("#request_id > div.footer > div > button:nth-child(1)"));
    //Кнопка Отклонить
    //  public static final SelenideElement buttonReject = $(By.cssSelector("#request_id > div.footer > div > button:nth-child(3)"));
    //Кнопка Закрыть в статусе В работе
    //  public static final SelenideElement buttonClose = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(6)"));
    //Кнопка Передать на исполнение
    //  public static final SelenideElement buttonTransferForExecution = $(By.cssSelector(".request-view > div.card > div.footer > button:nth-child(6)"));
    //Поле ввода исполнителя
    public static final SelenideElement inputExecutor = $(By.cssSelector(".content > div > div > div > div > div > input"));
    //Аварийная ситуация в комбо боксе Приоритет
    public static final SelenideElement priorityEmergensy = $(By.cssSelector("body > div:nth-child(8) > div > div > div > ul > li:nth-child(1)"));
    //Поле Приоритет
    public static final SelenideElement fieldPriority = $(By.cssSelector("#root > div > div > div > div > div:nth-child(2) > div.request-view > div.card > div.info > div > table > tbody > tr:nth-child(7) > td.content > div > div > div > div.ant-select-selection-selected-value"));
    //Надпись заявка №
    //public static final SelenideElement requestNumber = $(By.xpath("//div[@class='request-title']//a"));
    //Поле добавить файл
    public static final SelenideElement addFile = $(By.xpath("//button[.='Добавить файл']"));
    //гиперссылка номера консультации
    public static final SelenideElement numberOfConsultation = $(By.xpath("//table[@id='req-history-table']//tbody/tr[1]/td/a"));
    //кнопка закрыть заявку в модальном окне закрытия заявки
    public static final SelenideElement buttonCloseRequest = $(By.xpath("//div[8][@id=\"feedback\"]/div[2]/div[3]/div/button[1]"));
    //кнопка отмена в модальном окне закрытия заявки
    public static final SelenideElement buttonCancelRequest = $(By.xpath("//div[8][@id=\"feedback\"]/div[2]/div[3]/div/button[2]"));
    //История заявки (запись заявки с датой закрытия)
    public static final ElementsCollection storyOfRequestDateClosedOfRequest = $$(By.xpath("//table[@id='req-history-table']//*[contains(text(),'Выполнена') or contains(text(),'Отменить') or contains(text(),'Отклонить')]/..//td[1]"));
    //История заявки (сама таблица)
    public static final SelenideElement tableStoryOfrequest = $(By.xpath("//table[@id='req-history-table']"));
    //История исполнения заявки (сама таблица)
    public static final SelenideElement tableStoryOfExecutionRequest = $(By.xpath("//table[@id='req-history-table']/..//span[contains (text(), 'Скрыть историю выполнения заявки')]/..//tbody//td[2]"));
    //пиктограмма проблемности в гриде истории заявки
    public static final ElementsCollection pictogrammInHistoryOfRequest = $$(By.xpath(""));
    //Поле номер заявки
    public static final SelenideElement requestNumber = $(By.xpath("//span[@class='header']"));
    //История заявки (пиктограмма проблемности консультаций)
    public static final SelenideElement tableStoryOfrequestPictogramm = $(By.xpath("//table[@id='req-history-table']//div"));

}

