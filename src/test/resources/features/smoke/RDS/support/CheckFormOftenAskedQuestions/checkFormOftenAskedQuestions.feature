@support, @rds
Feature: smoke test, Проверка формы часто задаваемые вопросы в меню поддержка, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Form Often Asked Questions
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And check that fieldSearch is displayed
    And check that element with name "Часто задаваемые вопросы и ответы (FAQ)" is displayed in form questions
    And check that element with name "Как получить данные учетной записи (логин и пароль доступа) автоматизированной системы учета заявок?" is displayed in form questions
    And check that element with name "Какие есть минимальные требования к техническим средствам на рабочих местах диспетчера?" is displayed in form questions
    And check that element collapseAll is displayed in form questions
    And check that element addQuestion is displayed in form questions
    And check that element collapseQuestion is displayed in form questions
    And check that element deleteQuestion is displayed in form questions
    And check that element with name "Задать вопрос" is displayed in form questions
    And click callapse all in form question
    And check that element with name "Данные учетной записи указаны в инструкции к сервису для каждого диспетчера" is displayed in form questions
    And check that element with name "Требуется: дополнительный телефонный номер (для связи диспетчера с исполнителем), ПК (или ноутбук), принтер, средства диспетчеризации (диспетчерской связ" is displayed in form questions
    And check that element with name "Не нашли ответ на интересующий Вас вопрос?" is displayed in form questions
    And click close form question

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
