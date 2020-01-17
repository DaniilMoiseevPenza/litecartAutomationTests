@support, @cds
Feature: smoke test, проверка скрытия ответа на форме часто задаваемые вопросы, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Collapse Answer
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click collapse question in form new question
    And check that element with name "Вопрос автоматизации" is displayed in form questions
    And check that element with name "Ответ автоматизации" is displayed in form questions
    And click collapse question in form new question
    And check that element with name "Ответ автоматизации" is not displayed in form questions
    And click close form question

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"