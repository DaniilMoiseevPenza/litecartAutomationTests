@consultations, @cds
Feature: smoke test, Проверка фильтрации консультации, роль ЦДС (поле проблемная ситуация, чекбокс да)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Problem Situation Of Consultation Checkbox Yes
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And check that checkbox "Да" is displayed and "Нет" is selected
    And check that checkbox "Нет" is displayed and "Нет" is selected
    And check that checkbox "Все" is displayed and "Нет" is selected
    And click checkbox yes in filtr
    And press button with text "Применить"
    And click first consultation
    And check that checkbox "Проблемная ситуация" is disabled and is selected in cardOfConsultation
    And check that checkbox "Проблема решена" is disabled and is selected in cardOfConsultation
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"