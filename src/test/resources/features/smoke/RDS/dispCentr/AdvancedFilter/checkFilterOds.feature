@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле одс)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filter and ods
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And click to fieldOds
    And type to input "Автоматизация ОДС" in filtr "ОДС" in dispCentr
    And click first string with name "Автоматизация ОДС"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "ОДС"
    And click choose colums apply
    And check that ods in grid is "Автоматизация ОДС" in dispCentr

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"