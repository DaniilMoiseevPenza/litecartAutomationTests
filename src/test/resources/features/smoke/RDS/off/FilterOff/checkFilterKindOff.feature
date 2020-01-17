@off, @rds
Feature: smoke test, Поиск в фильтре отключений по полю вид отключения, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Kind Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click checkbox PlannedOff
    And click button with text "Применить" in filtrOff
    And check that emergency in grid is "Плановое отключение"
    And click first off
    And check that planned off in card off is "Плановое отключение"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"