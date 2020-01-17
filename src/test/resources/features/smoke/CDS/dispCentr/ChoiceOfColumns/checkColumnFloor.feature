@dispCentr
Feature: smoke test, Проверка отображения колонки этаж, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check display of column floor
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click choose colums
    And click button deselectAll
    And click choose column "Этаж"
    And click choose colums apply
    And check that element with name "Этаж" is displayed in grid


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"