@dispCentr
Feature: smoke test #1, Проверка формы Выписка роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check the form of statement
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click buttonStatementRequest
    And check that element additionaly is displayed
    And check that element with name "Выводить на бланке с подписью" is displayed
    And check that element with name "* Данный вид выписки доступен только по одному Балансодержателю" is displayed
    And check that button export in formStatement is displayed
    And click close form statement


  Scenario: check pop-up message at statement in the form of statement
    And click buttonStatementRequest
    And click export in formStatement
    And check pop-up message at statement of request is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"




