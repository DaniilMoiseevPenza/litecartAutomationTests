@off, @оds
Feature: smoke test, Проверка стартовой страницы отключений, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Started Page Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
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
    And check that element with name "Плановая дата включения" is displayed in grid off
    And scroll to column with name "Дата создания"
    And check that element with name "Фактическая дата включения" is displayed in grid off
    And check that element with name "Причина отключения, ход работ" is displayed in grid off
    And check that element with name "Ведёт работы" is displayed in grid off
    And check that element with name "ТП" is displayed in grid off
    And check that element with name "ЦТП" is displayed in grid off
    And check that element with name "Дата создания" is displayed in grid off

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"
