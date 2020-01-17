@dispCentr
Feature: smoke test, Проверка фильтрации заявок, роль ОДС (поле квартира)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr flat
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "1" in filtr "Квартира" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Квартира"
    And click choose colums apply
    And check that flats in grid is "1"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"