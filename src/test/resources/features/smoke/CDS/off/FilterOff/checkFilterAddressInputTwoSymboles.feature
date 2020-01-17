@off, @cds
Feature: smoke test, Поиск в фильтре отключений по полю адрес, ввод 2 символов, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Address Input Two Symboles
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And type to input text "по" in filtr "Адрес" "" in off
    And check that first address is empty in filtr off
    And click button with text "Применить" in filtrOff

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"