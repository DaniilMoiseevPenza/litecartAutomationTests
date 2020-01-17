@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле организация исполнитель)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr organization-perfomer
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Организация-исполнитель" in dispCentr
    And type to input "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr "Организация-исполнитель" in dispCentr
    And choose "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr Fio Executer
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Исполнитель"
    And click choose colums apply
    And check that column "Исполнитель" is "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"

