@dispCentr
Feature: smoke test #1, Проверка экранных форм журнала уведомлений роль СТП

  Scenario: authorization at STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display form of magazine notice
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Журнал уведомлений" is not displayed
    And check that element with name "Комментарии к заявкам" is not displayed
    And check that element with name "Отмена заявок" is not displayed
    And check that element with name "Системные уведомления" is not displayed
    And check that element with name "Отклонение заявок" is not displayed
    And check that element with name "Закрытие заявок" is not displayed

  #просмотр журнала Комментарии к заявкам
#    And click rubric "Комментарии к заявкам"
#    And check that element with name "Дата уведомления" is displayed
#    And check that element with name "Номер заявки" is displayed
#    And check that element with name "Комментарий" is displayed
#    And check that element with name "Организация" is displayed
#    And check that element with name "ФИО Сотрудника" is displayed
#    And click first number of request on form magazine of notice
#    And check that number request in modal form request is displayed
#    And click to close modal window of request
#    And check that element with name "Страница 1" is displayed in pagination
#    And click next page
#    And check that element with name "Страница 2" is displayed in pagination
#    And click to go to prev page
#    And check that element with name "Страница 1" is displayed in pagination


#     #просмотр журнала Отмена заявок
#    And click rubric "Отмена заявок"
#    And check that element with name "Дата уведомления" is displayed
#    And check that element with name "Номер заявки" is displayed
#    And check that element with name "Организация" is displayed
#    And check that element with name "ФИО Сотрудника" is displayed
#    And click first number of request on form magazine of notice
#    And check that number request in modal form request is displayed
#    And click to close modal window of request
#    And check that element with name "Страница 1" is displayed in pagination
#    And click next page
#    And check that element with name "Страница 2" is displayed in pagination
#    And click to go to prev page
#    And check that element with name "Страница 1" is displayed in pagination


#   #просмотр журнала Отклонение заявок
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


#   #просмотр журнала Закрытие заявок
#    And click rubric "Закрытие заявок"
#    And check that element with name "Дата уведомления" is displayed
#    And check that element with name "Номер заявки" is displayed
#    And check that element with name "Организация" is displayed
#    And check that element with name "ФИО Сотрудника" is displayed
#    And click first number of request on form magazine of notice
#    And check that number request in modal form request is displayed
#    And click to close modal window of request
#    And check that element with name "Страница 1" is displayed in pagination
#    And click next page
#    And check that element with name "Страница 2" is displayed in pagination
#    And click to go to prev page
#    And check that element with name "Страница 1" is displayed in pagination


#   #просмотр журнала Системные уведомления
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









