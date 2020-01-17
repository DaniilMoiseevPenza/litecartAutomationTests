Feature: smoke test #1, Проверка формы Выгрузка

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check the form of export
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click buttonExportRequest
    And check that element with name "Дополнительно" is displayed
    And check that element with name "Выводить комментарии к заявке" is displayed
    And check that button export in formExport is displayed
    And click close form export


  Scenario: check pop-up message at export in the form of export
    And click buttonExportRequest
    And click export in formExport
    And check pop-up message at export of request is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
