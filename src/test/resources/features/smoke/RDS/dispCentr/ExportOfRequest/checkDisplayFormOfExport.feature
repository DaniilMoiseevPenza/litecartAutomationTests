@dispCentr
Feature: smoke test, Проверка отображения формы Экспорт заявок, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display form of export
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Новые"
    And click buttonExportRequest
    And check that element with name "Дополнительно" is displayed
    And check that element with name "Выводить комментарии к заявке" is displayed
    And check that textAboutCountOfRequest is displayed
    And check that button export in formExport is displayed

  Scenario:  close form export
    And click close form export

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"