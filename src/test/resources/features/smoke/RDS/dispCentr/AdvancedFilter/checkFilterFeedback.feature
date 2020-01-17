@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле отзыв)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr feedback
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Отзыв" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Отзыв о работе"
    And click choose colums apply
    And check that column "Отзыв о работе" and field in the card of request is same

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"