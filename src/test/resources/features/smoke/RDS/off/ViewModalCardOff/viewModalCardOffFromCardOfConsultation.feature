@off, @rds
Feature: smoke test, Просмотр модальной карточки отключения из карточки консультации, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Modal Card Off From Card Of Consultation
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click field type of consultation
    And type to input text "Аварийные/плановые работы" in filtrTypeConsultation
    And click on first type of consultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Тип консультации" is "Аварийные/плановые работы"
    And click to hyperlinkOff
    And check that element with name "Просмотр отключения № " is visible in modalWindowOff
    And check that element with name "Дата создания" is visible in modalWindowOff
    And check that element with name "Тип отключения" is visible in modalWindowOff
    And check that element with name "Вид отключения" is visible in modalWindowOff
    And check that element with name "Дата отключения" is visible in modalWindowOff
    And check that element with name "Планируемая дата включения" is visible in modalWindowOff
    And check that element with name "Фактическая дата включения" is visible in modalWindowOff
    And check that element with name "Дома для отключения" is visible in modalWindowOff
    And check that element with name "Ведёт работы" is visible in modalWindowOff
    And check that element with name "Причина отключения, ход работ" is visible in modalWindowOff
    And check that element with name "Причина удаления" is visible in modalWindowOff
    And check that element with name "Создать консультацию" is not displayed in modalWindowOff
    And check that element with name "Удалить" is not displayed in modalWindowOff
    And check that element with name "Тип отключения" is disabled in modalWindowOff
    And check that element with name "Вид отключения" is disabled in modalWindowOff
    And check that element with name "Дата отключения" is disabled in modalWindowOff
    And check that element with name "Планируемая дата включения" is disabled in modalWindowOff
    And check that element with name "Фактическая дата включения" is disabled in modalWindowOff
    And check that element with name "Ведёт работы" is disabled in modalWindowOff
    And check that element with name "Причина отключения, ход работ" is disabled in modalWindowOff
    And check that element with name "Причина удаления" is disabled in modalWindowOff
    And check that element with name "Редактировать" is not displayed in modalWindowOff

  Scenario: close modal card off
    And click to close modal card off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"