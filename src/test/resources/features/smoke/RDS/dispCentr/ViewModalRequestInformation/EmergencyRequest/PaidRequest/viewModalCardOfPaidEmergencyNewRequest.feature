@dispCentr
Feature: smoke test, Просмотр модальной карточки платной аварийной заявки в статусе новая, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Modal Card Of Paid Emergency New Request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006866/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006866/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Аварийная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Новая" is displayed in modal form request
    And check that element with name "Адрес " is displayed in modal form request
     # And check that element with name "Возвращено на доработку" is not displayed in modal form request
     # And check that element with name "Комментарий к адресу" is not displayed in modal form request
     # And check that element with name "Домофон (способ вызова)" is not displayed in modal form request
    And scroll to address in ModalWindow
    And check that element with name "Подъезд" is displayed in modal form request
    And check that element with name "Этаж" is displayed in modal form request
    And check that element with name "Квартира" is displayed in modal form request
    And check that element with name "Код домофона" is displayed in modal form request
    And check that element with name "Контактное лицо" is displayed in modal form request
    And check that element with name "Основной телефон" is displayed in modal form request
    And check that element with name "Дополнительный телефон" is displayed in modal form request
    And check that element with name "Желаемое время" is displayed in modal form request
    And check that element with name "Платность" is displayed in modal form request
    And check that element with name "платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is displayed in modal form request
    And check that element with name "Оплата картой" is displayed in modal form request
    And check that element with name "Статус оплаты" is displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "АОН" is displayed in modal form request
    And check that element with name "Идентификатор звонка" is displayed in modal form request
    And check that element with name "Логин оператора" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Показать историю заявки" is displayed in modal form request
    And scroll to addFile in ModalWindow
    And click button with "Показать историю заявки" in modal form request
    And check that element with name "Время действия" is displayed in modal form request
    And check that element with name "ФИО сотрудника" is displayed in modal form request
    And check that element with name "Действие" is displayed in modal form request
    And click button with "Скрыть историю заявки" in modal form request
    And check that element with name "Время действия" is not displayed in modal form request
    And check that element with name "ФИО сотрудника" is not displayed in modal form request
    And check that element with name "Действие" is not displayed in modal form request
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is visible in modal form request
    And check that button with text "Печать" is visible in modal form request
    And check that button with text "Отклонить" is disable in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is disable in modal form request
    And check that button with text "Создать консультацию" is not visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"