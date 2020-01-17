@dispCentr
Feature: smoke test #1, Проверка поиска по номеру заявки роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check the search on number request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006862/18"
    And click button findRequest
    And click on first request
    And check that element with name "0100-0101-006862/18" is displayed in request


  Scenario: check the search on number request after filtr
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "1111111111" in filtr "Телефон" in dispCentr
    And press button with text "Применить"
    And wait pagination disp centr
    And clear fieldSearchOnNumberRequest in startPage
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006862/18"
    And click button findRequest
    And click on first request
    And check that element with name "0100-0101-006862/18" is displayed in request


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"