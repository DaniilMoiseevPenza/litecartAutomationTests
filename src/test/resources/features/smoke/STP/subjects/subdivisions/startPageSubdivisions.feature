@subjects, @stp
Feature: smoke test, Проверка страницы Субъектов/подразделения

  Scenario: Авторизация STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: Проверка стартовой страницы субъектов/раздел подразделения/карточка создания подразделения
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=subdivision"
#    And check that element with name "Фильтр не установлен. Для выборки данных установите фильтр." is displayed in grid of subjects
    And check that element with name "Новая запись" is displayed in card of subjects
    And check that element with name "Создание" is displayed in card of subjects
    And check that element with name "Наименование организации" is displayed in card of subjects
    And check that element with name "Вышестоящее подразделение" is displayed in card of subjects
    And check that element with name "Полное наименование подразделения *" is displayed in card of subjects
    And check that element with name "Краткое наименование подразделения *" is displayed in card of subjects
    And check that element with name "Тип подразделения" is displayed in card of subjects
    And check that element with name "Бизнес роль" is displayed in card of subjects
    And check that button with text "Редактировать" is displayed in card of subjects
    And check that element with name "Тип доступа" is displayed in card of subjects
    And check that element with name "Контакты" is displayed in card of subjects
    And check that element with name "Время работы*" is displayed in card of subjects
    And check that element with name "Телефон *" is displayed in card of subjects
    And check that element with name "Дополнительный телефон" is displayed in card of subjects
    And check that element with name "E-mail *" is displayed in card of subjects
    And check that element with name "Сайт" is displayed in card of subjects
    And check that element with name "Фактический адрес" is displayed in card of subjects
    And scroll to by business role
    And check that element with name "Системная информация" is displayed in card of subjects
    And check that element with name "Идентификатор первой версии" is displayed in card of subjects
    And check that element with name "Дата создания" is displayed in card of subjects
    And check that element with name "Дата начала действия" is displayed in card of subjects
    And check that element with name "Дата деактивации" is displayed in card of subjects
    And check that button with text "Отменить изменения" is displayed in card of subjects
    And check that button with text "Создать" is displayed in card of subjects
    And check next subject is disabled
    And check prev subject is disabled



  Scenario: Проверка сворачивания/разворачивания блоков в карточке субъекта
    And click to collapse block contacts
    And check that element with name "Время работы*" is not displayed in card of subjects
    And check that element with name "Телефон *" is not displayed in card of subjects
    And check that element with name "Дополнительный телефон" is not displayed in card of subjects
    And check that element with name "E-mail *" is not displayed in card of subjects
    And check that element with name "Сайт" is not displayed in card of subjects
    And check that element with name "Фактический адрес" is not displayed in card of subjects
    And click to collapse block contacts
    And check that element with name "Время работы*" is displayed in card of subjects
    And check that element with name "Телефон *" is displayed in card of subjects
    And check that element with name "Дополнительный телефон" is displayed in card of subjects
    And check that element with name "E-mail *" is displayed in card of subjects
    And check that element with name "Сайт" is displayed in card of subjects
    And check that element with name "Фактический адрес" is displayed in card of subjects
    And scroll to by business role
    And click to collapse block system information
    And check that element with name "Идентификатор первой версии" is not displayed in card of subjects
    And check that element with name "Дата создания" is not displayed in card of subjects
    And check that element with name "Дата начала действия" is not displayed in card of subjects
    And check that element with name "Дата деактивации" is not displayed in card of subjects
    And click to collapse block system information
    And check that element with name "Идентификатор первой версии" is displayed in card of subjects
    And check that element with name "Дата создания" is displayed in card of subjects
    And check that element with name "Дата начала действия" is displayed in card of subjects
    And check that element with name "Дата деактивации" is displayed in card of subjects


  Scenario: Проверка названия столбцов в гриде подразделений
    And click to collapse subjects
    And click button with text "Скрыть" in filtr subjects
    And check that element with name "Идентификатор" is displayed
    And check that element with name "Наименование организации" is displayed
    And check that element with name "Вышестоящее подразделение" is displayed
    And check that element with name "Краткое наименование подразделения" is displayed
    And check that element with name "Фактический адрес" is displayed
    And check that element with name "Дата создания" is displayed
    And check that element fieldSearchSubjects is displayed
    And check that element find is displayed
    And check that element advanced filter is displayed
    And check that element create is displayed
    And check expand subject is displayed
    And click to expand subjects
    And check that element with name "Наименование организации" is displayed in card of subjects
    And click to collapse subjects
    And check that element with name "Наименование организации" is not displayed in card of subjects

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"