@off, @cds
Feature: smoke test, Поиск в фильтре отключений по полю фактическая дата начала, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Facted Started Date
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Фактическая дата начала" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Фактическая дата начала" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that date off between "25.02.2019 17:48" and "28.02.2019 17:48"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"