@dispCentr
Feature: smoke test, Просмотр карточки заявки, по которой не была создана консультация, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Request, By Which Consultation Was Not Created
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And type to input with name searchOnNumberRequest text: "0100-0101-006867/18"
    And click button findRequest
    And check that number request in grid is "0100-0101-006867/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in history table
    And click button with "Показать консультации"
    And check that element with name "Нет данных" is displayed in history table

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
