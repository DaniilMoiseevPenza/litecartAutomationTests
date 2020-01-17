@consultations, @rds
Feature: smoke test, поиск по неполному номеру заявки, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search By Not Full Number Of Request
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1100-0000-267140" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And check that not data in gridConsultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"