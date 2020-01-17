@support, @cds
Feature: smoke test, Проверка меню поддержка на отображение всех элементов, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Menu Support
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And check that element with name "Поддержка" is displayed
    And check that element with name "Обратная связь" is displayed
    And check that element with name "Часто задаваемые вопросы (FAQ)" is displayed
    And check that element with name "Настройки" is displayed
    And check that element with name "Выйти" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"