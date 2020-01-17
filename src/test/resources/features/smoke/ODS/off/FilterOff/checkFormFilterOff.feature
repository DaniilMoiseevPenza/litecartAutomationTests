@off, @оds
Feature: smoke test, Проверка формы фильтр отключений, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Filter Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And open start page "disablings"
    And click button filtroff
    And check that element with name "Район" is not displayed in filtr off
    And check that element with name "Адрес" is displayed in filtr off
    And check that element with name "№ ОДС" is not displayed in filtr off
    And check that element with name "Округ:" is not displayed in filtr off
    And check that element with name "Вид отключения" is displayed in filtr off
    And check that element with name "Тип отключения" is displayed in filtr off
    And check that element with name "Ведет работы" is displayed in filtr off
    And check that element with name "Плановая дата начала" is displayed in filtr off
    And check that element with name "Фактическая дата начала" is displayed in filtr off
    And check that element with name "Плановая дата окончания" is displayed in filtr off
    And check that element with name "Фактическая дата окончания" is displayed in filtr off
    And check that element with name "Применить" is displayed in filtr off
    And check that element with name "Отменить" is displayed in filtr off
    And check that element with name "Сбросить фильтр" is displayed in filtr off
    And click button filtroff

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"