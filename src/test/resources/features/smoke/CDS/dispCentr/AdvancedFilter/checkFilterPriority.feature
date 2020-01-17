@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле приоритет)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr priority
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Приоритет"
    And click choose colums apply
    And check that column "Приоритет" is "Обычная"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"