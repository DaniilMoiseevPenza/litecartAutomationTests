@dispCentr
Feature: smoke test, Проверка поиска по номеру заявки, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check search by number of request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006862/18"
    And click button findRequest
    And click on first request
    And check that element with name "0100-0101-006862/18" is displayed in request

  Scenario: close card of request
    And click close card of request

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"