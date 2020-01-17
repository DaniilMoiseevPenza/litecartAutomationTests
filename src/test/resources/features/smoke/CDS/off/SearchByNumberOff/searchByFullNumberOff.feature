@off, @cds
Feature: smoke test, Поиск по полному номеру отключения, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search By Full Number Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And type to input with fieldSearch text: "14294202"
    And click button enter
    And check that number off in grid is "14294202"
    And clear fieldSearch in off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"