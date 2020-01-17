@consultations, @rds
Feature: smoke test, Проверка фильтрации консультации, роль РДС (чекбокс аварийная заявка)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Emergency Request
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click checkbox emergency request
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by request
    And check that field "Приоритет" is "Аварийная" in cardRequest

  Scenario: close card of request
    And click close card of request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"