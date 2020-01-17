@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле согласованная стоимость)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr agreed cost
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And type to input "10" in filtr "Согласованная стоимость" in dispCentr
    And type to input "100" in filtr "до" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Согласованная стоимость"
    And click choose colums apply
    And check that column "Согласованная стоимость" in grid between "10" and "100"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
