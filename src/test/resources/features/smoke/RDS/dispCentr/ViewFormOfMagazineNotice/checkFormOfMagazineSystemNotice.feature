@dispCentr
Feature: smoke test #1, Проверка экранных форм журнала уведомлений роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Of Magazine System Notice
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
#    And check that element with name "Системные уведомления" is displayed
#    And click rubric "Системные уведомления"
#   And check that element with name "Дата уведомления" is displayed
#    And check that element with name "Содержание" is displayed
#    And check that element with name "Страница 1" is displayed in pagination
#    And click next page
#    And check that element with name "Страница 2" is displayed in pagination
#    And click to go to prev page
#    And check that element with name "Страница 1" is displayed in pagination

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
