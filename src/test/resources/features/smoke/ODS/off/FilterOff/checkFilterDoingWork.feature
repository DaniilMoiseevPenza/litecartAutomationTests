@off, @оds
Feature: smoke test, Поиск в фильтре отключений по полю ведет работы, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Doing Work
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to organization in filtrWorkOff
    And type to input text "организация по отключению" in filtr "Ведет работы" "" in off
    And click organization in filtr off with name "организация по отключению"
    And click button with text "Применить" in filtrOff
    And scroll to column with name "Дата создания"
    And check that work in grid is "организация по отключению"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"