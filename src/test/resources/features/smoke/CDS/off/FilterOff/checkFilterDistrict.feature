@off, @cds
Feature: smoke test, Поиск в фильтре отключений по полю Район, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter District
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to fieldDistrict in filtrOff
    And type to input text "муниципальный округ Кокошкино" in filtrDistrictOff
    And click first string with name "муниципальный округ Кокошкино"
#    And click first district in fieldDistrictOff
    And click button with text "Применить" in filtrOff
    And check that region in grid off is "НАО"
    And check that district in grid off is "Кокошкино"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"