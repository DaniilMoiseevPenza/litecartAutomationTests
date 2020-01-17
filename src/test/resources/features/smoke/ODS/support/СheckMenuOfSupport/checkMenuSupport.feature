@support, @оds
Feature: smoke test, Проверка меню поддержка на отображение всех элементов, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Menu Support
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click to open support
    And check that element with name "Поддержка" is displayed
    And check that element with name "Обратная связь" is displayed
    And check that element with name "Часто задаваемые вопросы (FAQ)" is displayed
    And check that element with name "Настройки" is displayed
    And check that element with name "Выйти" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"