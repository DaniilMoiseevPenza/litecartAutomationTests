@dispCentr
Feature: smoke test, Проверка экранной формы журнала уведомлений отклонение заявок, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Of Magazine Rejecting Of Request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
#    And check that element with name "Отклонение заявок" is displayed
#    And click rubric "Отклонение заявок"
#    And check that element with name "Дата уведомления" is displayed
#    And check that element with name "Номер заявки" is displayed
#    And check that element with name "Организация" is displayed
#    And check that element with name "ФИО Сотрудника" is displayed
#    And click first number of request on form magazine of notice
#    And click first number of request on form magazine of notice
#    And check that number request in modal form request is displayed
#    And click to close modal window of request
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
