@adresses
Feature: smoke test #1, Проверка автокомплита КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr adress
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check address autocomplit