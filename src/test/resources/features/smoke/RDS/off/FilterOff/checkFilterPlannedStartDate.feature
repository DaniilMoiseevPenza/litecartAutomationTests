@off, @rds
Feature: smoke test, Поиск в фильтре отключений по полю плановая дата начала, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Planned Start Date
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Плановая дата начала" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Плановая дата начала" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that date create off between "01.02.2019 17:48" and "25.02.2019 17:48"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"