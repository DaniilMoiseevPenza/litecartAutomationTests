@dispCentr
Feature: smoke test, Проверка отображения рубрики журнала уведомлений, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Display Rubric Of Magazine Notice
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And check that element with name "Журнал уведомлений" is displayed
    And check that element with name "Комментарии к заявкам" is displayed
    And check that element with name "Отмена заявок" is displayed
#    And check that element with name "Системные уведомления" is displayed
#    And check that element with name "Отклонение заявок" is displayed
#    And check that element with name "Закрытие заявок" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"
