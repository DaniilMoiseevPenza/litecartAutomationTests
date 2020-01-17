@consultation @callcentr
Feature: smoke test #2, Проверка формы выгрузки консультаций под КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check pop-up message at export of consultation
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Консультации"
    And click buttonExportRequest
    And check pop-up message at export of consultation is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
