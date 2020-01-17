@dispCentr
Feature: smoke test, Проверка фильтрации заявок, роль РДС (поле адрес, ввод 2 символов)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Address Input Two Symboles
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "по" in filtr "Адрес" in dispCentr
    And check that first adress in filtr adress is not visible
    And press button with text "Применить"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"