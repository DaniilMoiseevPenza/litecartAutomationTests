@dispCentr
Feature: smoke test, Отображение заявок в рубрике Новые, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display of request in rubric new
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Новые"
    And check that element table grid "Новая" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"