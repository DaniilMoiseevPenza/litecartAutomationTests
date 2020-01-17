@consultation @rds
Feature: smoke test #9, Проверка поиска по номеру консультации под РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check the search on number request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And wait pagination disp centr
    And click fieldSearchOnNumberConsultation in startPage
    And type to input with name searchOnNumberConsultation text: "К1100-0000-054168/18"
    And click button findRequest
    And check that number request in grid is "К1100-0000-054168/18"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"