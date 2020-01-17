@dispCentr
Feature: smoke test, Проверка отображения кнопок и заголовков в форме выбор колонок, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check form choice of columns on display of button
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click choose colums
    And check that element with name "Колонки для отображен" is displayed
    And check that element with name "Список колонок" is displayed
    And check that element with name "Выбранные колонки" is displayed
    And check that element with name "Колонки для отображения" is displayed
    And check that element select all is displayed
    And check that element deselect all is displayed
    And check that element swap all is displayed
    And check that element custom is displayed
    And check that element apply is displayed
    And click to close form choise of colums


  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"