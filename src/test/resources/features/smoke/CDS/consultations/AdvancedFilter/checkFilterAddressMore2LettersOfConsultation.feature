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
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in filtrConsultation
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And press button with text "Применить"
    And click first consultation
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"