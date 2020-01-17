@off
Feature: smoke test #1, Проверка страницы Карточка отключения

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка полей в карточке активного отключения
    Given check that page is "center"
    And open start page "disablings"
    And click first off
    And check that element next off is displayed
    And check that element prev off is disabled
    And check that element title off  is displayed
    And check that numberOff is displayed
    And check that element with name "Дата создания" is displayed in off
    And check that element with name "Тип отключения" is displayed in off
    And check that element with name "Вид отключения" is displayed in off
    And check that element with name "Дата отключения" is displayed in off
    And check that element with name "Планируемая дата включения" is displayed in off
    And check that element with name "Фактическая дата включения" is displayed in off
    And check that element with name "Дома для отключения" is displayed in off
    And check that element with name "Ведёт работы" is displayed in off
    And scroll to reason of delete
    And check that element reason off is displayed
    And check that element reason delete off is displayed
    And check that element with name "Удалить" is displayed in off
    And check that element with name "Сохранить" is displayed in off
    And click collapse off
    And click collapse on
    And check that element with name "Дата создания" is displayed in off
    And check that button prev off is disabled
    And click button next off
    And check that button prev off is enable
    And click button prev off
    And check that button prev off is disabled

  Scenario: Проверка полей в карточке удаленного отключения
    And click checkbox show deleted
    And click first off
    And check that element next off is displayed
    And check that element prev off is disabled
    And check that element title off  is displayed
    And check that numberOff is displayed
    And check that element with name "Дата создания" is displayed in off
    And check that element with name "Тип отключения" is displayed in off
    And check that element with name "Вид отключения" is displayed in off
    And check that element with name "Дата отключения" is displayed in off
    And check that element with name "Планируемая дата включения" is displayed in off
    And check that element with name "Фактическая дата включения" is displayed in off
    And check that element with name "Дома для отключения" is displayed in off
    And check that element with name "Ведёт работы" is displayed in off
    And scroll to reason of delete
    And check that element reason off is displayed
    And check that element reason delete off is displayed
    And check that element with name "Восстановить" is displayed in off
    And click collapse off
    And check that element with name "Дата создания" is not displayed in off
    And click collapse on
    And check that element with name "Дата создания" is displayed in off
    And check that button prev off is disabled
    And click button next off
    And check that button prev off is enable
    And click button prev off
    And check that button prev off is disabled

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"