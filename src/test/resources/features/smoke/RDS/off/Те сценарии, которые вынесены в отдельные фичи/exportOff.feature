@off, @rds
Feature: smoke test #1, Проверка формы Выгрузка отключений

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check the form of export
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click buttonExportOff
    And check pop-up message at export off is displayed


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
