@consultations, @cds
Feature: smoke test, Проверка фильтрации консультации, роль ЦДС (поле адрес)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Address Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "Ни" in filtr "Адрес" in filtrConsultation
    And check that first adress in filtr adress is not visible
    And press button with text "Применить"


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"