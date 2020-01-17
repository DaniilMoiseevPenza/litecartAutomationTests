@support, @cds
Feature: smoke test, Открытие формы Обратная связь из формы Часто задаваемые вопросы, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: opening Form Back By Button Ask Question
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click button with "Задать вопрос" in form question
    And check that element with name "Ваш E-mail" is displayed in form back call
    And check that fieldEmail is displayed
    And check that element with name "Ваш телефон" is displayed in form back call
    And check that fieldPhone is displayed
    And check that element with name "Тема" is displayed in form back call
    And check that fieldTheme is displayed
    And check that element with name "Текст сообщения" is displayed in form back call
    And check that fieldMessage is displayed
    And check that element with name "Контактная информация (обязательно заполнить хотя бы одно поле)" is displayed in form back call
    And check that element with name "Отправить" is displayed in form back call
    And check that element with name "Отмена" is displayed in form back call
    And check that element with name "Символом" is displayed in form back call
    And click button with "Отмена" in form call back

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"