@support, @оds
Feature: smoke test, Выбор звукового уведомления в настройках, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: choice Of Sound
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click to open support
    And click button with "Настройки"
    And check that element with name "Звуковые уведомления:" is displayed in form settings
    And check that element with name "Включить" is displayed in form settings
    And check that element with name "Звук уведомлений:" is displayed in form settings
    And check that element with name "Гитара" is displayed in form settings
    And check that element with name "Горн" is displayed in form settings
    And check that element with name "Звонок" is displayed in form settings
    And check that element with name "Новогодний" is displayed in form settings
    And check that element with name "Применить" is displayed in form settings
    And check that element with name "По умолчанию" is displayed in form settings
    And check that element listen box is displayed
    And check that element check box sound off is displayed
    And check that element select sound is displayed
    And click choose sound
    And click button with "Гитара" in form settings
    And click button sound off
    And check that audio in settings is "guitar_notification.8775ead0.mp3"
    And click button with text "Применить" in settings
    And check that element with name "Настройки применены" is displayed in form message settings
    And check that element with name "Ок" is displayed in form message settings
    And click button with name "Ок" in form message settings

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"