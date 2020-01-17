@support, @оds
Feature: smoke test, Проверка работы кнопки Применить в настройках, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Button Apply Settings
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "guitar_notification.8775ead0.mp3"
    And check that button sound off is displayed in form settings
    And click button with text "По умолчанию" in settings
    And check that element with name "Настройки применены" is displayed in form message settings
    And check that element with name "Ок" is displayed in form message settings
    And click button with name "Ок" in form message settings
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And check that button sound on is displayed in form settings
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