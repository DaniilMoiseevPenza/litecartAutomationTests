@support, @rds
Feature: smoke test, Проверка кнопки выйти из формы настройки, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Button Exit From Settings
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And click button with "Гитара" in form settings
    And click button sound off
    And click button exitSettings
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And check that button sound on is displayed in form settings
    And click button exitSettings

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"