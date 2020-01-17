@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле контактное лицо)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr fio
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "тест" in filtr "Контактное лицо" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Контактное лицо"
    And click choose colums apply
    And check that column "Контактное лицо" is "Тест"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"