@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле статус оплаты)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr status of payment
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус оплаты" in dispCentr
    And click filtr "не оплачено"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Статус оплаты"
    And click choose colums apply
    And check that column "Статус оплаты" is "Не оплачено"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
