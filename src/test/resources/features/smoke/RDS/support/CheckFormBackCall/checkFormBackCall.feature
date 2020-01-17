@support, @rds
Feature: smoke test, Проверка формы обратной связи в меню поддержка

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Back Call
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Обратная связь"
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
    And click button with "Отправить" in form call back
    And check that text "Необходимо указать контактные данные" is displayed in notice
    And check that text "Необходимо ввести тему" is displayed in notice
    And check that text "Необходимо ввести текст сообщения" is displayed in notice
    And click button with "Отмена" in form call back

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
