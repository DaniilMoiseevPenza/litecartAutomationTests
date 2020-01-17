@support, @оds
Feature: smoke test, Проверка поиска вопросов/ответов на форме Часто задаваемые вопросы, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search Question And Answer
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click button with "Часто задаваемые вопросы (FAQ)"
    And check that element with name "Данные учетной записи указаны в инструкции к сервису для каждого диспетчера" is not displayed in form questions
    And type to input text "получить" in field search in form questions
    And check that element with name "Данные учетной записи указаны в инструкции к сервису для каждого диспетчера" is displayed in form questions
    And click close form question

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"