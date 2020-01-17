@consultations, @cds
Feature: smoke test, Проверка фильтрации консультации,роль ЦДС (поле закрыл проблемную ситуацию)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Closed Problem Situation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox yes in filtr
    And click to field "Закрыл проблемную ситуацию" in filtr consultation
    And type to input text "Оператор КЦ" in filtr "Закрыл проблемную ситуацию" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Зыкрыл проблемную ситуацию" is "Оператор КЦ"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"