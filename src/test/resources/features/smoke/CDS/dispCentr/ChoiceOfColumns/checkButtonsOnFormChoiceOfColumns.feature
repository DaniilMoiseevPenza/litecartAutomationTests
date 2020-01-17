@dispCentr
Feature: smoke test, Проверка работы кнопок на форме выбора колонок, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"


   Scenario: check buttons on form choice of columns
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click choose colums
    And click button deselectAll
    And click button select all
    And check that element with name "Номер заявки" is displayed in selected columns
    And click button deselectAll
    And check that element with name "Номер заявки" is displayed in column list
    And click button swapAll
    And check that element with name "Номер заявки" is displayed in selected columns

  Scenario:  close form choise of colums
    And click to close form choise of colums

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"



