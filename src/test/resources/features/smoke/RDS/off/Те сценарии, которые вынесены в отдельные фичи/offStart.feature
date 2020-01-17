@off, @rds
Feature: smoke test #1, Проверка страницы Отключения

  Scenario: Авторизация RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: Проверка стартовой страницы отключений
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And check that element with name "Показать удаленные" is displayed
    And check that element newOff is displayed
    And check that element searchoff is displayed
    And check that element filtrOff is displayed
    And check that element arrowOff is displayed
    And check that element fieldSearchOff is displayed
    And check that element showDeleted is displayed
    And check that element exportOff is displayed
    And check that element with name "Номер отключения" is displayed in grid off
    And check that element with name "Район" is displayed in grid off
    And check that element with name "Адрес" is displayed in grid off
    And check that element with name "Вид отключения" is displayed in grid off
    And check that element with name "Отключение услуги" is displayed in grid off
    And check that element with name "Тип отключения" is displayed in grid off
    And check that element with name "Дата отключения" is displayed in grid off
    And check that element with name "Планируемая дата включения" is displayed in grid off
    And scroll to create date off in grid off
    And check that element with name "Фактическая дата включения" is displayed in grid off
    And check that element with name "Причина отключения, ход работ" is displayed in grid off
    And check that element with name "Ведёт работы" is displayed in grid off
    And check that element with name "ТП" is displayed in grid off
    And check that element with name "ЦТП" is displayed in grid off
    And check that element with name "Дата создания" is displayed in grid off

  Scenario: check form off pagination
    Given check that page is "disablings"
    And check that element with name "Страница 1" is displayed in pagination off
    And click next page off
    And check that element with name "Страница 2" is displayed in pagination off
    And click to go to prev page off
    And check that element with name "Страница 1" is displayed in pagination off
    And click to go to last page in off
    And check that last page in grid off is last
    And click to go to first page in off
    And check that element with name "Страница 1" is displayed in pagination

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"


