@subjects, @stp
Feature: smoke test, Проверка страницы Субъектов/адреса обслуживания

  Scenario: Авторизация STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: Проверка стартовой страницы субъектов/раздел организации
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=address"
#    And check that element with name "Фильтр не установлен. Для выборки данных установите фильтр." is displayed in grid of subjects
    And check that element with name "Новая запись" is displayed in card of subjects
    And check that element with name "Unom" is displayed in card of subjects
    And check that element with name "Unad" is displayed in card of subjects
    And check that element with name "Реальный адрес" is displayed in card of subjects
    And check that element with name "Тип здания" is displayed in card of subjects
    And check that element with name "Округ" is displayed in card of subjects
    And check that element with name "Район" is displayed in card of subjects
    And check next subject is disabled
    And check prev subject is disabled


  Scenario: Проверка названия столбцов в гриде адреслов обслуживания
    And click to collapse subjects
    And click button with text "Скрыть" in filtr subjects
    And check that element with name "ID адреса" is displayed
    And check that element with name "Unom" is displayed
    And check that element with name "Unad" is displayed
    And check that element with name "Адрес" is displayed
    And check that element with name "Диспетчерская" is displayed
    And check that element with name "Аварийная" is displayed
    And check that element with name "УК" is displayed
    And check that element with name "ОО" is displayed
    And check that element fieldSearchAddresses is displayed
    And check that element find is displayed
    And check that element advanced filter is displayed
    And check that element create is not displayed
    And check expand subject is displayed
    And check that element with name "Реальный адрес" is not displayed in card of subjects
    And click to expand subjects
    And check that element with name "Реальный адрес" is displayed in card of subjects


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"