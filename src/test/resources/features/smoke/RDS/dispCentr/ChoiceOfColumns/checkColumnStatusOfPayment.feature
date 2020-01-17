@dispCentr
Feature: smoke test, Проверка отображения статус оплаты, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display of column status of payment
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click choose colums
    And click button deselectAll
    And click choose column "Статус оплаты"
    And click choose colums apply
    And check that element with name "Статус оплаты" is displayed in grid

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"