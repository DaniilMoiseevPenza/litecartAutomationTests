@dispCentr
Feature: smoke test #1, Просмотр карточки заявки

  Background:
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    Then check that page is "center"

  Scenario Outline: check View form of Normal Free Request in status "New" on all elements
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr priority
    And click filtr "<Аварийность заявки>"
    And click empty
    And click filtr status
    And click filtr "<Статус заявки>"
    And click empty
    And click payable
    And click filtr "<Платность заявки>"
    And press button with text "Применить"
    And click on first request
    And check that element next request is displayed
    And check that element prev request is displayed
    And check that element title of request is displayed
    Then check that element with text is displayed in request
    |Категория|
    |Тип дефекта|
    |Организация Исполнитель|
    |Исполнитель|
    |ОДС|
    |Управляющая компания|
    |Описание|
    |Приоритет|
    |<Аварийность заявки>|
    |Статус|
    |<Статус заявки>|
    |Адрес|
    |Подъезд|
    |Этаж|
    |Квартира|
    |Код домофона|
    |Контактное лицо|
    |Основной телефон|
    |Дополнительный телефон|
    |Желаемое время|
    |Платность|
    |<Платность заявки>|
    |Дата составления|
    |Принял заявку|
    |Источник|
    |Причина отмены|
    |Причина отклонения|
    |Оставить комментарий|
    |Документы|
    |Добавить комментарий|
    |Добавить файл|
    When click button with "Показать историю выполнения заявки"
    Then check that element with text is displayed in request
    |Время действия|
    |ФИО сотрудника|
    |Действие|
    |Исполнитель|
    |Вид выполненных работ|
    When click button with "Скрыть историю выполнения заявки"
    Then check that element prev request is disable
    When click element next request
    Then check that element prev request is enable
    When click element prev request
    Then check that element prev request is disable
    When click collapse and expand request
    Then check that element with name "Категория" is not displayed in request
    When click collapse and expand request
    And scroll to line with name "Категория" in card
    Then check that element with name "Категория" is displayed in request

    Examples:
    |Платность заявки|Аварийность заявки|Статус заявки|
    |бесплатная|Обычная |Новая|
    |бесплатная|Обычная |Ожидает обработки|
    |бесплатная|Обычная |В работе|
    |бесплатная|Обычная |Закрыта|
    |бесплатная|Обычная |Отменена|
    |бесплатная|Обычная |Отклонена|
    |бесплатная / платная|Обычная |Новая|
    |бесплатная / платная|Обычная |Ожидает обработки|
    |бесплатная / платная|Обычная |В работе|
    |бесплатная / платная|Обычная |Закрыта|
    |бесплатная / платная|Обычная |Отменена|
    |бесплатная / платная|Обычная |Отклонена|
    |платная|Обычная |Новая|
    |платная|Обычная |Ожидает обработки|
    |платная|Обычная |В работе|
    |платная|Обычная |Закрыта|
    |платная|Обычная |Отменена|
    |платная|Обычная |Отклонена|
    |бесплатная|Аварийная |Новая|
    |бесплатная|Аварийная |Ожидает обработки|
    |бесплатная|Аварийная |В работе|
    |бесплатная|Аварийная |Закрыта|
    |бесплатная|Аварийная |Отменена|
    |бесплатная|Аварийная |Отклонена|
    |бесплатная / платная|Аварийная |Новая|
    |бесплатная / платная|Аварийная |Ожидает обработки|
    |бесплатная / платная|Аварийная |В работе|
    |бесплатная / платная|Аварийная |Закрыта|
    |бесплатная / платная|Аварийная |Отменена|
    |бесплатная / платная|Аварийная |Отклонена|
    |платная|Аварийная |Новая|
    |платная|Аварийная |Ожидает обработки|
    |платная|Аварийная |В работе|
    |платная|Аварийная |Закрыта|
    |платная|Аварийная |Отменена|
    |платная|Аварийная |Отклонена|




  #    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with text is not displayed in request:
#    |Согласованная стоимость|Оплата картой|Статус оплаты|Вид выполненных работ|Оценка|Отзыв о работе|
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Закрыть заявку" is not visible in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    Examples:
#  |Ведомые поля|
#    |Категория|
#    |Тип дефекта|
#    |Исполнитель|
#    |ОДС|
#    |Управляющая компания|
#    |Описание|
#    |Приоритет|
#    |<Аварийность заявки>|
#    |Статус|
#    |<Статус заявки>|
#    |Желаемое время|
#    |Адрес|
#    |Источник|
#  Scenario: check View form of  Normal Free Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Закрыть заявку" is not visible in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Закрыть заявку" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free Request in status "Closed" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Решена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Закрыта" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And check that element with name "Выполнена" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отклонить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
###просмотр аварийной бесплатной заявки
#  Scenario: check View form of Emergency Free Request in status "New" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Новая"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Новая" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#  Scenario: check View form of Emergency Free Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free Request in status "Closed" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Решена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Закрыта" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And check that element with name "Выполнена" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отклонить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#
###просмотр обычной платной заявки
#  Scenario: check View form of Normal Pay Request in status "New" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Новая"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Новая" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of  Normal Pay Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Pay Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Pay Request in status "Closed" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Решена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Закрыта" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And check that element with name "Выполнена" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Pay Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отклонить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Pay Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#
#    ##просмотр аварийной платной заявки
#  Scenario: check View form of Emergency Pay Request in status "New" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Новая"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Новая" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Pay Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is not displayed in request
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Pay Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Pay Request in status "Closed" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Решена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Закрыта" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is displayed in request
#    And check that element with name "Оплата картой" is displayed in request
#    And check that element with name "Статус оплаты" is displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And check that element with name "Выполнена" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is displayed in request
#    And check that element with name "Оценка" is displayed in request
#    And check that element with name "Отзыв о работе" is displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Pay Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отклонить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Pay Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#
#     ##просмотр обычной бесплатной/платной заявки
#  Scenario: check View form of Normal Free/Pay Request in status "New" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Новая"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Новая" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of  Normal Free/Pay Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free/Pay Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#  Scenario: check View form of Normal Free/Pay Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
# # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
# # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отклонить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
##  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Normal Free/Pay Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Обычная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Обычная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#
#    ##просмотр аварийной бесплатной/платной заявки
#  Scenario: check View form of Emergency Free/Pay Request in status "New" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Новая"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Новая" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free/Pay Request in status "Work" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Ожидает обработки"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Ожидает обработки" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Принять в работу" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free/Pay Request in status "Execution" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "В работе"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "В работе" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная / платная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "На выполнение" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Показать историю исполнения заявки" is displayed in request
#    And click button with "Показать историю исполнения заявки"
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And check that element with name "Скрыть историю исполнения заявки" is displayed in request
#    And click button with "Скрыть историю исполнения заявки"
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    #And check that button with text "Отправить в АС" is visible in request
#    And check that button with text "Сохранить" is visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is disable in request
#    And check that button with text "Отменить" is disable in request
#    And check that button with text "Передать на исполнение" is disable in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#    Scenario: check View form of Emergency Free/Pay Request in status "Reject" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отклонена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отклонена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
# # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
# # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#      And check that element with name "Создание заявки" is displayed in request
#      And check that element with name "Отклонить" is displayed in request
#      And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
# # And check that element with name "Возвращено на доработку" is not displayed in request
# # And check that element with name "Комментарий к адресу" is not displayed in request
# # And check that element with name "Код домофона" is not displayed in request
# # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
##  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: check View form of Emergency Free/Pay Request in status "Cancelled" on all elements
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr priority
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr status
#    And click filtr "Отменена"
#    And click empty
#    And click payable
#    And click filtr "бесплатная / платная"
#    And press button with text "Применить"
#    And click on first request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#    And check that element with name "Тип дефекта" is displayed in request
#    And check that element with name "Исполнитель" is displayed in request
#    And check that element with name "ОДС" is displayed in request
#    And check that element with name "Управляющая компания" is displayed in request
#    And check that element with name "Описание" is displayed in request
#    And check that element with name "Приоритет" is displayed in request
#    And check that element with name "Аварийная" is displayed in request
#    And check that element with name "Статус" is displayed in request
#    And check that element with name "Отменена" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Адрес " is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to adress
#    And check that element with name "Этаж" is displayed in request
#    And check that element with name "Квартира" is displayed in request
#    And check that element with name "Подъезд" is displayed in request
#    And check that element with name "Контактное лицо" is displayed in request
#    And check that element with name "Основной телефон" is displayed in request
#    And check that element with name "Дополнительный телефон" is displayed in request
#    And check that element with name "Желаемое время" is displayed in request
#    And check that element with name "Платность" is displayed in request
#    And check that element with name "бесплатная" is displayed in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And scroll to additionalPhone
#    And check that element with name "Дата составления" is displayed in request
#    And check that element with name "Принял заявку" is displayed in request
#    And check that element with name "Источник" is displayed in request
#    And check that element with name "Причина отмены" is displayed in request
#    And check that element with name "Причина отклонения" is displayed in request
#    And scroll to addFile
#    And click button with "Показать историю заявки"
#    And check that element with name "Время действия" is displayed in request
#    And check that element with name "ФИО сотрудника" is displayed in request
#    And check that element with name "Действие" is displayed in request
#    And check that element with name "Создание заявки" is displayed in request
#    And check that element with name "Отменить" is displayed in request
#    And click button with "Скрыть историю заявки"
#    And check that element with name "Время действия" is not displayed in request
#    And check that element with name "ФИО сотрудника" is not displayed in request
#    And check that element with name "Действие" is not displayed in request
#    And check that element with name "Оставить комментарий" is displayed in request
#    And check that element with name "Документы" is displayed in request
#    And check that element with name "Добавить комментарий" is displayed in request
#    And check that element with name "Добавить файл" is displayed in request
#    And check that button with text "Отправить в АС" is not visible in request
#    And check that button with text "Сохранить" is not visible in request
#    And check that button with text "Принять заявку" is not visible in request
#    And check that button with text "Печать" is visible in request
#    And check that button with text "Отклонить" is not visible in request
#    And check that button with text "Отменить" is not visible in request
#    And check that button with text "Передать на исполнение" is not visible in request
#    And check that button with text "Создать консультацию" is not visible in request
#    And check that button with text "Проблемная ситуация" is not visible in request
#    And check that button with text "Недозвон" is not visible in request
#    And check that button with text "Оповещен" is not visible in request
#    And check that button with text "На доработку" is not visible in request
#    And check that button with text "Копировать заявку" is not visible in request
#   # And check that element with name "Возвращено на доработку" is not displayed in request
#   # And check that element with name "Комментарий к адресу" is not displayed in request
#   # And check that element with name "Код домофона" is not displayed in request
#   # And check that element with name "Домофон (способ вызова)" is not displayed in request
#    And check that element with name "Согласованная стоимость" is not displayed in request
#    And check that element with name "Оплата картой" is not displayed in request
#    And check that element with name "Статус оплаты" is not displayed in request
#    And check that element with name "Вид выполненных работ" is not displayed in request
#    And check that element with name "Оценка" is not displayed in request
#    And check that element with name "Отзыв о работе" is not displayed in request
#  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
#    And check that element prev request is disable
#    And click element next request
#    And check that element prev request is enable
#    And click element prev request
#    And check that element prev request is disable
#    And click collapse and expand request
#    And check that element with name "Тип заявки (категория)" is not displayed in request
#    And click collapse and expand request
#    And scroll to category
#    And check that element with name "Тип заявки (категория)" is displayed in request
#
#  Scenario: logout
#    And click to open support
#    And click exit
#    And check that element with name "Информация" is displayed
#    And click buttonNoticeOk
#    And wait page autorization
#    And check that page is "login"
#
#
