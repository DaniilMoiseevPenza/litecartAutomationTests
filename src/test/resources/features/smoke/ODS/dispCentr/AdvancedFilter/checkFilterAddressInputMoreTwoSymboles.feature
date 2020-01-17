@dispCentr
Feature: smoke test, Проверка фильтрации заявок, роль ОДС (поле адрес,ввод более 2 символов)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Address Input More Two Symboles
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in dispCentr
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Адрес дома"
    And click choose colums apply
    And check that addresses in grid is "1-й Николощеповский переулок, дом 20/4"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"