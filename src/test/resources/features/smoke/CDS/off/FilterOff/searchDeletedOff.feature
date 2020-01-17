@off, @cds
Feature: smoke test, Поиск удаленных отключений, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search Deleted Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click checkbox show deleted
    And click first off
    And check that buttonRestart is displayed
    And click checkbox show deleted
    And click collapse off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"