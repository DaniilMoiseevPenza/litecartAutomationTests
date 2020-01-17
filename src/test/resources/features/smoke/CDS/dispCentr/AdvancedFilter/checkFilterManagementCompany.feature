@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле управляющая компания)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr created request (work)
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    ## добавить сценарий

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"