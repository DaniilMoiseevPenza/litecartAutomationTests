@dispCentr
Feature: smoke test, Проверка формы печать карточки заявки в статусе отклонена, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check form of print rejected request
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

  Scenario: check close form print request
    And click button exit in form print request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"