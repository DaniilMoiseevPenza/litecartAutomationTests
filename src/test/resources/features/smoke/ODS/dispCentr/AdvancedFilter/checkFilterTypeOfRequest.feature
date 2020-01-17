@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ОДС (поле тип заявки)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr type of request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Тип дефекта"
    And click choose colums apply
    And check that column "Тип дефекта" is "Плотницкие, слесарные работы Другое"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"