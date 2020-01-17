Feature: smoke test #1, Проверка формы печать карточки заявки

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check form print close request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Решена"
    And press button with text "Применить"
    And click on first request
    And click button with text "Печать" in form request card
    And check that element with text "Заказ-наряд" is not displayed in form print request
    And check that element with text "Карточка заявки" is displayed in form print request
    And check that element with text "Печатать комментарии к заявке" is displayed in form print request
    And check that element with text "Печатать историю заявки" is displayed in form print request
    And check that element with text "Печатать историю исполнения" is displayed in form print request


  Scenario: check close form print close request
    And click button exit in form print request

  Scenario: check form print reject request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Отклонена"
    And press button with text "Применить"
    And click on first request
    And click button with text "Печать" in form request card
    And check that element with text "Заказ-наряд" is not displayed in form print request
    And check that element with text "Карточка заявки" is displayed in form print request
    And check that element with text "Печатать комментарии к заявке" is displayed in form print request
    And check that element with text "Печатать историю заявки" is displayed in form print request
    And check that element with text "Печатать историю исполнения" is displayed in form print request


  Scenario: check close form print reject request
    And click button exit in form print request

  Scenario: check form print cancell request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Отменена"
    And press button with text "Применить"
    And click on first request
    And click button with text "Печать" in form request card
    And check that element with text "Заказ-наряд" is not displayed in form print request
    And check that element with text "Карточка заявки" is displayed in form print request
    And check that element with text "Печатать комментарии к заявке" is displayed in form print request
    And check that element with text "Печатать историю заявки" is displayed in form print request
    And check that element with text "Печатать историю исполнения" is displayed in form print request


  Scenario: check close form print cancell request
    And click button exit in form print request

  Scenario: check form print in work request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "В работе"
    And press button with text "Применить"
    And click on first request
    And click button with text "Печать" in form request card
    And check that element with text "Заказ-наряд" is displayed in form print request
    And check that element with text "Карточка заявки" is displayed in form print request
    And check that element with text "Печатать комментарии к заявке" is not displayed in form print request
    And check that element with text "Печатать историю заявки" is not displayed in form print request
    And check that element with text "Печатать историю исполнения" is not displayed in form print request
    And click button with text "Карточка заявки" in form print request
    And check that element with text "Печатать комментарии к заявке" is displayed in form print request
    And check that element with text "Печатать историю заявки" is displayed in form print request
    And check that element with text "Печатать историю исполнения" is displayed in form print request
    And click button with text "Заказ-наряд" in form print request
    And check that element with text "Печатать комментарии к заявке" is not displayed in form print request
    And check that element with text "Печатать историю заявки" is not displayed in form print request
    And check that element with text "Печатать историю исполнения" is not displayed in form print request

  Scenario: check close form print work request
    And click button exit in form print request


  Scenario: check pop menu print request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click button with text "Печать" in form request card
    And click button with name "Печать" in form print request card
    And check pop-up message at print of request is displayed


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"




