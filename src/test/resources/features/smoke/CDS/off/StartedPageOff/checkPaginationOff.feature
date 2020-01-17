@off, @cds
Feature: smoke test, Проверка пагинации отключений, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Pagination Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And check that element with name "Страница 1" is displayed in pagination off
    And check that element with name "Показать все" is displayed in pagination off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
