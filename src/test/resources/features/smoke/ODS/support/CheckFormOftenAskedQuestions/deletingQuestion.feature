@support, @оds
Feature: smoke test, Удаление вопроса на форме часто задаваемые вопросы, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: deleting Question
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
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
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"