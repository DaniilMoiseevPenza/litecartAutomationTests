@support, @rds
Feature: smoke test, Удаление вопроса на форме часто задаваемые вопросы, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: deleting Question
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click button delete question in form new question
    And check that element with name "Подтвердите действие?" is displayed in form delete question
    And check that element with name "Вы уверены, что хотите удалить этот вопрос?" is displayed in form delete question
    And check that element with name "Уверен" is displayed in form delete question
    And check that element with name "Отменить удаление" is displayed in form delete question
    And click button with text "Отменить удаление" in form delete question
    And check that element with name "Вы уверены, что хотите удалить этот вопрос?" is not displayed in form delete question
    And click button delete question in form new question
    And check that element with name "Вы уверены, что хотите удалить этот вопрос?" is displayed in form delete question
    And click button with text "Уверен" in form delete question
    And check that element with name "Вопрос автоматизации" is not displayed in form questions
    And click close form question

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"