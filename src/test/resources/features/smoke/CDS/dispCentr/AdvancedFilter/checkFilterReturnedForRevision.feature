@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле возвращена на доработку)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr returned for revision
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Возвращена на доработку" in dispCentr
    And press button with text "Применить"
    And check that element with name "Возвращено на доработку" is displayed in all elements

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"