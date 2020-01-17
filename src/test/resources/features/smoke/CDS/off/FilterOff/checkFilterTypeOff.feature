@off, @cds
Feature: smoke test, Поиск в фильтре отключений по полю тип отключения, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Type Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "Залив канализационной водой" in filtr "Тип отключения" "" in off
    And click off defect "Залив канализационной водой" in filttr off
    And click button with text "Применить" in filtrOff
    And check that disabling the service in grid is "Водоотведение (канализация)"
    And check that type off in grid is "Залив канализационной водой"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"