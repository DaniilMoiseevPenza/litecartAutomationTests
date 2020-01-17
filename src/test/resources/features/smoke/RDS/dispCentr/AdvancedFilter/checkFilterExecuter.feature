@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле исполнитель)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr executer
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Организация-исполнитель" in dispCentr
    And type to input "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr "Организация-исполнитель" in dispCentr
    And choose "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr Fio Executer
    And click filtr "ФИО исполнителя" in dispCentr
   # And type to input "dfd" in filtr "ФИО исполнителя" in dispCentr
   # And type to input "Мудрый Кирилл Александрович" in filtr "ФИО исполнителя" in dispCentr
    And choose "Мудрый Кирилл Александрович" in filtr Fio Executer
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Исполнитель"
    And click choose colums apply
    And check that column "Исполнитель" is "Мудрый Кирилл Александрович"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"

