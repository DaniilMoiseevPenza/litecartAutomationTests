@off, @cds
Feature: smoke test, Просмотр карточки удаленного отключения, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: view Deleted Off
    Given check that page is "center"
    And open start page "disablings"
    And click checkbox show deleted
    And click first off
    And check that element next off is displayed
    And check that element prev off is disabled
    And check that element title off  is displayed
    And check that element with name "Отключение" is displayed in off
    And check that element with name "Дата создания" is displayed in off
    And check that element with name "Тип отключения" is displayed in off
    And check that element with name "Вид отключения" is displayed in off
    And check that element with name "Плановая дата начала" is displayed in off
    And check that element with name "Фактическая дата начала" is displayed in off
    And check that element with name "Плановая дата окончания" is displayed in off
    And check that element with name "Фактическая дата окончания" is displayed in off
    And check that element with name "Дома для отключения" is displayed in off
    And check that element with name "Ведёт работы" is displayed in off
    And scroll to line with name "Причина удаления" in card
    And check that element with name "Причина отключения, ход работ" is displayed in off
    And check that element with name "Причина удаления" is displayed in off
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