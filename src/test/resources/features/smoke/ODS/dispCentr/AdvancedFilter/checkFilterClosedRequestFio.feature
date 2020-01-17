Feature: smoke test, Проверка фильтрации заявок роль ОДС (поле закрыл заявку (фио))

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr closed request (fio)
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
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
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"