@dispCentr
Feature: smoke test, Проверка отображения колонки согласованная стоимость в гриде с заявками, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display of column agreed cost
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click choose colums
    And click button deselectAll
    And click choose column "Согласованная стоимость"
    And click choose colums apply
    And check that element with name "Согласованная стоимость" is displayed in grid

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"