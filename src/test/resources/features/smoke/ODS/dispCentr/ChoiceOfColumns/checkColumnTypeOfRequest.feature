@dispCentr
Feature: smoke test, Проверка отображения тип заявки (категория), роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check display of column type of request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click choose colums
    And click button deselectAll
    And click choose column "Тип заявки (категория)"
    And click choose colums apply
    And check that element with name "Тип заявки (категория)" is displayed in grid


  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"