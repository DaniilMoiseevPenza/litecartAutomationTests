@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле создал заявку (должность))

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr created request (work)
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Создал заявку (должность)" in dispCentr
    And click filtr "Диспечтер ОДС"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Принял заявку"
    And click choose colums apply
    And check that column "Принял заявку" is "Диспетчер ОДС"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"