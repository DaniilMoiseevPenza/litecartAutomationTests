@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ОДС (поле причина отклонения)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr reason of reject
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Причина отклонения" in dispCentr
    And click filtr "Множественное обращение по данной проблеме/дефекту"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Причина отклонения"
    And click choose colums apply
    And check that column "Причина отклонения" is "Множественное обращение по данной проблеме/дефекту"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"