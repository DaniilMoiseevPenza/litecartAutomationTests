@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле район)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filter district and ods
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And click filtr district in request filtrs
    And type to input text "муниципальный округ Арбат" in filtrDistrictConsultation
    And click first string with name "муниципальный округ Арбат"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Район"
    And click choose colums apply
    And check that district in grid is "Арбат" in dispCentr


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"