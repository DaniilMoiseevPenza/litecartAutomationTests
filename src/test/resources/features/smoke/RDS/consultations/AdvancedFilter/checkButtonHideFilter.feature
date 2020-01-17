@consultations, @rds
Feature: smoke test, Проверка кнопки скрыть в фильтре консультаций, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Button Hide Filter
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Скрыть"
    And check that form filter of consultation is not displayed
    And click filter of consultation
    And check that form filter of consultation is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"