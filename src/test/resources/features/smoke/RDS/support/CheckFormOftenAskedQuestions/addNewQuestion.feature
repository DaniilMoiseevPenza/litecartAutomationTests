@support, @rds
Feature: smoke test, Добавление нового вопроса/ответа на форме часто задаваемые вопросы, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: add New Question
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click button add new question
    And check that element that text "Добавить вопрос-ответ" is displayed in form add question
    And check that element that text "Текст вопроса" is displayed in form add question
    And check that element that text "Текст ответа" is displayed in form add question
    And check that element that text "Сохранить" is displayed in form add question
    And check that element that text "Отмена" is displayed in form add question
    And check that question text is displayed in form add question
    And check that answer text is displayed in form add question
    And click button with text "Сохранить" in form add question
    And check that element that text "Необходимо указать текст вопроса" is displayed in form add question
    And check that element that text "Необходимо указать текст ответа" is displayed in form add question
    And type to input text "Вопрос автоматизации" in field question in form add question
    And type to input text "Ответ автоматизации" in field answer in form add question
    And click button with text "Сохранить" in form add question
    And click callapse all in form question
    And check that element with name "Вопрос автоматизации" is displayed in form questions
    And check that element with name "Ответ автоматизации" is displayed in form questions
    And click close form question

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"