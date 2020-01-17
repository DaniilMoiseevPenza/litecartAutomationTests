@off, @cds
Feature: smoke test, Поиск в фильтре отключений по полю адрес, ввод более 2 симовлов, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario:check Filter Address Input More Two Symboles
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" "" in off
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And click button with text "Применить" in filtrOff
    And check that address in grid is "1-й Николощеповский переулок, дом 20/4"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"