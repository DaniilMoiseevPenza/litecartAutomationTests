@support, @stp
Feature: smoke test #1, Проверка формы обратной связи в меню поддержка


  Scenario: authorization at STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: test support menu
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Единый Диспетчерский Центр" is displayed in blockDispCentr
    And click to open support
    And check that element with name "Поддержка" is displayed
    And check that element with name "Обратная связь" is displayed
    And check that element with name "Часто задаваемые вопросы (FAQ)" is displayed
    And check that element with name "Настройки" is displayed
    And check that element with name "Выйти" is displayed

  Scenario: test form back call
    Given check that page is "center"
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

  Scenario: test form most relevated questions
    Given check that page is "center"
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

  Scenario: test form ask question in questions form
    Given check that page is "center"
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

  Scenario: test form add new question in questions form
    Given check that page is "center"
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

  Scenario: test collapse question in questions form
    Given check that page is "center"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And click collapse question in form new question
    And check that element with name "Вопрос автоматизации" is displayed in form questions
    And check that element with name "Ответ автоматизации" is displayed in form questions
    And click collapse question in form new question
    And check that element with name "Ответ автоматизации" is not displayed in form questions
    And click close form question

  Scenario: test collapse question in questions form
    Given check that page is "center"
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

  Scenario: test collapse question in questions form
    Given check that page is "center"
    And click to open support
    And click button with "Часто задаваемые вопросы (FAQ)"
    And check that element with name "Данные учетной записи указаны в инструкции к сервису для каждого диспетчера" is not displayed in form questions
    And type to input text "получить" in field search in form questions
    And check that element with name "Данные учетной записи указаны в инструкции к сервису для каждого диспетчера" is displayed in form questions
    And click close form question

  Scenario: test form settings
    Given check that page is "center"
    And click to open support
    And click button with "Настройки"
    And check that element with name "Звуковые уведомления:" is displayed in form settings
    And check that element with name "Включить" is displayed in form settings
    And check that element with name "Звук уведомлений:" is displayed in form settings
    And check that element with name "Гитара" is displayed in form settings
    And check that element with name "Горн" is displayed in form settings
    And check that element with name "Звонок" is displayed in form settings
    And check that element with name "Новогодний" is displayed in form settings
    And check that element with name "Применить" is displayed in form settings
    And check that element with name "По умолчанию" is displayed in form settings
    And check that element listen box is displayed
    And check that element check box sound off is displayed
    And check that element select sound is displayed
    And click choose sound
    And click button with "Гитара" in form settings
    And click button sound off
    And check that audio in settings is "guitar_notification.8775ead0.mp3"
    And click button with text "Применить" in settings
    And check that element with name "Настройки применены" is displayed in form message settings
    And check that element with name "Ок" is displayed in form message settings
    And click button with name "Ок" in form message settings

  Scenario: test button primery in settings
    Given check that page is "center"
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "guitar_notification.8775ead0.mp3"
    And check that button sound off is displayed in form settings
    And click button with text "По умолчанию" in settings
    And check that element with name "Настройки применены" is displayed in form message settings
    And check that element with name "Ок" is displayed in form message settings
    And click button with name "Ок" in form message settings
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And check that button sound on is displayed in form settings
    And click button with text "Применить" in settings
    And check that element with name "Настройки применены" is displayed in form message settings
    And check that element with name "Ок" is displayed in form message settings
    And click button with name "Ок" in form message settings

  Scenario: test button exit in settings
    Given check that page is "center"
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And click button with "Гитара" in form settings
    And click button sound off
    And click button exitSettings
    And click to open support
    And click button with "Настройки"
    And check that audio in settings is "air_horn.8481db06.mp3"
    And check that button sound on is displayed in form settings
    And click button exitSettings

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"

