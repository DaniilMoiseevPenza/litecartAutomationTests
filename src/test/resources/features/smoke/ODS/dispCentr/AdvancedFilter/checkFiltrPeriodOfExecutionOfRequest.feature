@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ОДС (поле срок выполнения заявки)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr period of execution - 1 day
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "В течение суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date closed from "В течение суток"

  Scenario: check filtr period of execution - 1 to 7 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 1 до 7 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And check that date closed from "От 1 до 7 суток"

  Scenario: check filtr check filtr period of execution - 8 to 15 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 8 до 15 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And check that date closed from "От 8 до 15 суток"

  Scenario: check filtr period of execution - more 15 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "Более 15 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date closed from "Более 15 суток"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"







