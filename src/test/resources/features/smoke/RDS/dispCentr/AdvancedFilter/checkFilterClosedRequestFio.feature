Feature: smoke test, Проверка фильтрации заявок роль РДС (поле закрыл заявку (фио))

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr closed request (fio)
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Закрыл заявку (ФИО)" in dispCentr
    And type to input "fdsa" in filtr "Закрыл заявку (ФИО)" in dispCentr
    And type to input "ОДС авто" in filtr "Закрыл заявку (ФИО)" in dispCentr
    And choose " ОДС авто " in filtr Fio Closer
    And click empty in form filtr of request
    And press button with text "Применить"
    And click on the first request
    And scroll to addFile
    And click button with "Показать историю исполнения заявки"
    And check that fieldClosedRequest is "Автоматизация ОДС"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"