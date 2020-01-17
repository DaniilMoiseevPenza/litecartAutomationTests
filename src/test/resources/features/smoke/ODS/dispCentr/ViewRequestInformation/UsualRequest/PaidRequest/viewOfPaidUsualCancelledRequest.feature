@dispCentr
Feature: smoke test, Просмотр платной обычной заявки в статусе отменена, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Of Paid Usual Cancelled Request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr priority
    And click filtr "Обычная"
    And click empty
    And click filtr status
    And click filtr "Отменена"
    And click empty
    And click payable
    And click filtr "платная"
    And press button with text "Применить"
    And click on first request
    And scroll to category
    And check that element with name "Тип заявки (категория)" is displayed in request
    And check that element with name "Тип дефекта" is displayed in request
    And check that element with name "Исполнитель" is displayed in request
    And check that element with name "ОДС" is displayed in request
    And check that element with name "Управляющая компания" is displayed in request
    And check that element with name "Описание" is displayed in request
    And check that element with name "Приоритет" is displayed in request
    And check that element with name "Обычная" is displayed in request
    And check that element with name "Статус" is displayed in request
    And check that element with name "Отменена" is displayed in request
    And check that element with name "Желаемое время" is displayed in request
    And check that element with name "Адрес " is displayed in request
   # And check that element with name "Возвращено на доработку" is not displayed in request
   # And check that element with name "Комментарий к адресу" is not displayed in request
   # And check that element with name "Код домофона" is not displayed in request
   # And check that element with name "Домофон (способ вызова)" is not displayed in request
    And check that element with name "Согласованная стоимость" is displayed in request
    And check that element with name "Оплата картой" is displayed in request
    And check that element with name "Статус оплаты" is displayed in request
    And check that element with name "Вид выполненных работ" is not displayed in request
    And check that element with name "Оценка" is not displayed in request
    And check that element with name "Отзыв о работе" is not displayed in request
   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
    And scroll to adress
    And check that element with name "Этаж" is displayed in request
    And check that element with name "Квартира" is displayed in request
    And check that element with name "Подъезд" is displayed in request
    And check that element with name "Контактное лицо" is displayed in request
    And check that element with name "Основной телефон" is displayed in request
    And check that element with name "Дополнительный телефон" is displayed in request
    And check that element with name "Желаемое время" is displayed in request
    And check that element with name "Платность" is displayed in request
    And check that element with name "платная" is displayed in request
   # And check that element with name "Возвращено на доработку" is not displayed in request
   # And check that element with name "Комментарий к адресу" is not displayed in request
   # And check that element with name "Код домофона" is not displayed in request
   # And check that element with name "Домофон (способ вызова)" is not displayed in request
    And check that element with name "Вид выполненных работ" is not displayed in request
    And check that element with name "Оценка" is not displayed in request
    And check that element with name "Отзыв о работе" is not displayed in request
   # And check that element with name "Житель просит связаться по вопросу" is not displayed in request
    And scroll to additionalPhone
    And check that element with name "Дата составления" is displayed in request
    And check that element with name "Принял заявку" is displayed in request
    And check that element with name "АОН" is displayed in request
    And check that element with name "Идентификатор звонка" is displayed in request
    And check that element with name "Логин оператора" is displayed in request
    And check that element with name "Источник" is displayed in request
    And check that element with name "Причина отмены" is displayed in request
    And check that element with name "Причина отклонения" is displayed in request

    And scroll to addFile
    And click button with "Показать историю заявки"
    And check that element with name "Время действия" is displayed in request
    And check that element with name "ФИО сотрудника" is displayed in request
    And check that element with name "Действие" is displayed in request
    And check that element with name "Создание заявки" is displayed in request
    And check that element with name "Отменить" is displayed in request
    And click button with "Скрыть историю заявки"
    And check that element with name "Время действия" is not displayed in request
    And check that element with name "ФИО сотрудника" is not displayed in request
    And check that element with name "Действие" is not displayed in request
    And check that element with name "Оставить комментарий" is displayed in request
    And check that element with name "Документы" is displayed in request
    And check that element with name "Добавить комментарий" is displayed in request
    And check that element with name "Добавить файл" is displayed in request
    And check that button with text "Отправить в АС" is not visible in request
    And check that button with text "Сохранить" is not visible in request
    And check that button with text "Принять заявку" is not visible in request
    And check that button with text "Печать" is visible in request
    And check that button with text "Отклонить" is not visible in request
    And check that button with text "Отменить" is not visible in request
    And check that button with text "Передать на исполнение" is not visible in request
    And check that button with text "Закрыть заявку" is not visible in request
    And check that button with text "Создать консультацию" is not visible in request
    And check that button with text "Проблемная ситуация" is not visible in request
    And check that button with text "Недозвон" is not visible in request
    And check that button with text "Оповещен" is not visible in request
    And check that button with text "На доработку" is not visible in request
    And check that button with text "Копировать заявку" is not visible in request
   # And check that element with name "Возвращено на доработку" is not displayed in request
   # And check that element with name "Комментарий к адресу" is not displayed in request
   # And check that element with name "Код домофона" is not displayed in request
   # And check that element with name "Домофон (способ вызова)" is not displayed in request
    And check that element with name "Вид выполненных работ" is not displayed in request
    And check that element with name "Оценка" is not displayed in request
    And check that element with name "Отзыв о работе" is not displayed in request
  #  And check that element with name "Житель просит связаться по вопросу" is not displayed in request
    And check that element prev request is disable
    And click element next request
    And check that element prev request is enable
    And click element prev request
    And check that element prev request is disable
    And click collapse and expand request
    And check that element with name "Тип заявки (категория)" is not displayed in request
    And click collapse and expand request
    And scroll to category
    And check that element with name "Тип заявки (категория)" is displayed in request

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"