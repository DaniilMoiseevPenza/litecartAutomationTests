@consultations, @cds
Feature: smoke test, Проверка фильтрации консультации, роль ЦДС (поле район)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter District Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click to field "Район" in filtr consultation
    ##And type to input text "муниципальный округ Арбат" in filtrDistrictConsultation
    And click text "муниципальный округ Арбат"
   # And click first district in fieldDistrict
  #    And click empty in form filtr of consultation
    And press button with text "Применить"
  #   And check that ods in grid is "ОДС1"
    And check that region in grid is "НАО"
    And check that district in grid is "Кокошкино"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"