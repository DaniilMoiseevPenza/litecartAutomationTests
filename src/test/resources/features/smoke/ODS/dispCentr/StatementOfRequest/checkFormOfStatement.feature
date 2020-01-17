@dispCentr
Feature: smoke test, Проверка формы Выписка, роль ОДС

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Of Statement
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click buttonStatementRequest
    And check that element additionaly is displayed
    And check that element with name "Выводить на бланке с подписью" is displayed
    And check that element with name "* Данный вид выписки доступен только по одному Балансодержателю" is displayed
    And check that button export in formStatement is displayed
    And click close form statement

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"
