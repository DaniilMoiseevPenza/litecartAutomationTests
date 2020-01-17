@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле оплата картой)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr payment by card
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Оплата картой" in dispCentr
    And press button with text "Применить"
    And check that element with name "Оплата картой" is selected in all requests

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"