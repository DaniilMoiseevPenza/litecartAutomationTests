@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль РДС (поле дата создания)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr date of create
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And click to field date create with
    And type to input text "01.12.2018 10:00" in "Дата создания" "с" in filtr
    And click empty in form filtr of request
    And click to field date create by
    And type to input text "23.12.2018 10:00" in "Дата создания" "по" in filtr
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date create of request in grid between "01.12.2018 10:00" and "23.12.2018 10:00"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"