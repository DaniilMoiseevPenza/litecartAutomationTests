@dispCentr
Feature: smoke test #1, Просмотр модальной карточки заявки роль КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

      ##просмотр обычной бесплатной заявки в статусе новая
  Scenario: check View modal form of Normal Free Request in status "New" on all elements
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006837/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006837/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
        # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
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
    #Потом поменять на "Скрыть"
    And check that element with name "Время действия" is not displayed in modal form request
    And check that element with name "ФИО сотрудника" is not displayed in modal form request
    And check that element with name "Действие" is not displayed in modal form request
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной заявки в статусе ожидает обработки
  Scenario: check View modal form of Normal Free Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006671/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006671/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
       # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Показать историю заявки" is displayed in modal form request
    And scroll to addFile
    And click button with "Показать историю заявки" in modal form request
    And check that element with name "Время действия" is displayed in modal form request
    And check that element with name "ФИО сотрудника" is displayed in modal form request
    And check that element with name "Действие" is displayed in modal form request
    And click button with "Скрыть историю заявки" in modal form request
    #Потом поменять на "Скрыть"
    And check that element with name "Время действия" is not displayed in modal form request
    And check that element with name "ФИО сотрудника" is not displayed in modal form request
    And check that element with name "Действие" is not displayed in modal form request
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной заявки в статусе в работе
  Scenario: check View modal form of Normal Free Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006838/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006838/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "В работе" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    #Потом поменять на "Скрыть"
    And check that element with name "Время действия" is not displayed in modal form request
    And check that element with name "ФИО сотрудника" is not displayed in modal form request
    And check that element with name "Действие" is not displayed in modal form request
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

            ##просмотр обычной бесплатной заявки в статусе закрыта
  Scenario: check View modal form of Normal Free Request in status "Closed" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006775/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006775/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Закрыта" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    #Потом поменять на "Скрыть"
    And check that element with name "Время действия" is not displayed in modal form request
    And check that element with name "ФИО сотрудника" is not displayed in modal form request
    And check that element with name "Действие" is not displayed in modal form request
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной заявки в статусе отклонена
  Scenario: check View modal form of Normal Free Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006810/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006810/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And scroll to addFile in ModalWindow
#    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
#    And click button with "Показать историю исполнения заявки" in modal form request
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And click button with "Скрыть историю исполнения заявки" in modal form request
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной заявки в статусе отменена
  Scenario: check View modal form of Normal Free Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006821/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006821/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And scroll to addFile in ModalWindow
#    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
#    And click button with "Показать историю исполнения заявки" in modal form request
#    And check that element with name "Время действия" is displayed in history table
#    And check that element with name "ФИО диспетчера" is displayed in history table
#    And check that element with name "Исполнитель" is displayed in history table
#    And check that element with name "Вид выполненных работ" is displayed in history table
#    And click button with "Скрыть историю исполнения заявки" in modal form request
#    And check that element with name "Время действия" is not displayed in history table
#    And check that element with name "ФИО диспетчера" is not displayed in history table
#    And check that element with name "Исполнитель" is not displayed in history table
#    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request



            ##просмотр аварийной бесплатной заявки в статусе новая
  Scenario: check View modal form of Emergency Free Request in status "New" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006836/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006836/18" in form new request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной заявки в статусе ожидает обработки
  Scenario: check View modal form of Emergency Free Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006842/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006842/18" in form new request
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
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной заявки в статусе в работе
  Scenario: check View modal form of Emergency Free Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006835/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006835/18" in form new request
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
    And check that element with name "В работе" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


            #просмотр аварийной бесплатной заявки в статусе закрыта
  Scenario: check View modal form of Emergency Free Request in status "Closed" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006773/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006773/18" in form new request
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
    And check that element with name "Закрыта" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And scroll to addFile in ModalWindow
    And check that element with name "Показать историю исполнения заявки" is displayed in modal form request
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной заявки в статусе отклонена
  Scenario: check View modal form of Emergency Free Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006808/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006808/18" in form new request
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
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной заявки в статусе отменена
  Scenario: check View modal form of Emergency Free Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006822/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006822/18" in form new request
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
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "бесплатная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной/платной заявки в статусе новая
  Scenario: check View modal form of Normal Free/Pay Request in status "New" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006867/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006867/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    And click close card of request

  Scenario: close form new request
    And click to close form new request


           ##просмотр обычной бесплатной/платной заявки в статусе ожидает обработки
  Scenario: check View modal form of Normal Free/Pay Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006856/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006856/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request



           ##просмотр обычной бесплатной/платной заявки в статусе в работе
  Scenario: check View modal form of Normal Free/Pay Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006863/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006863/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "В работе" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной/платной заявки в статусе отклонена
  Scenario: check View modal form of Normal Free/Pay Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006848/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006848/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
   # And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной бесплатной/платной заявки в статусе отменена
  Scenario: check View modal form of Normal Free/Pay Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006844/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006844/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

           ##просмотр аварийной бесплатной/платной заявки в статусе новая
  Scenario: check View modal form of Emergency Free/Pay Request in status "New" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006843/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006843/18" in form new request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной/платной заявки в статусе ожидает обработки
  Scenario: check View modal form of Emergency Free/Pay Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006862/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006862/18" in form new request
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
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request



           ##просмотр аварийной бесплатной/платной заявки в статусе в работе
  Scenario: check View modal form of Emergency Free/Pay Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006851/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006851/18" in form new request
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
    And check that element with name "В работе" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is not displayed in modal form request
    And check that element with name "Оценка" is not displayed in modal form request
    And check that element with name "Отзыв о работе" is not displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной/платной заявки в статусе отклонена
  Scenario: check View modal form of Emergency Free/Pay Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-000051/19" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-000051/19" in form new request
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
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной бесплатной/платной заявки в статусе отменена
  Scenario: check View modal form of Emergency Free/Pay Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006849/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006849/18" in form new request
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
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "бесплатная / платная" is displayed in modal form request
    And check that element with name "Согласованная стоимость" is not displayed in modal form request
    And check that element with name "Оплата картой" is not displayed in modal form request
    And check that element with name "Статус оплаты" is not displayed in modal form request
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

         ##просмотр обычной платной заявки в статусе новая
  Scenario: check View modal form of Normal Pay Request in status "New" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006873/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006873/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Новая" is displayed in modal form request
    And check that element with name "Адрес " is displayed in modal form request
     # And check that element with name "Возвращено на доработку" is not displayed in modal form request
     # And check that element with name "Комментарий к адресу" is not displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной платной заявки в статусе ожидает обработки
  Scenario: check View modal form of Normal Pay Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006872/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006872/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request



           ##просмотр обычной платной заявки в статусе в работе
  Scenario: check View modal form of Normal Pay Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006869/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006869/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "В работе" is displayed in modal form request
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

    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

            ##просмотр обычной платной заявки в статусе закрыта
  Scenario: check View modal form of Normal Pay Request in status "Closed" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006860/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006860/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Закрыта" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр обычной платной заявки в статусе отклонена
  Scenario: check View modal form of Normal Pay Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006868/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006868/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Оповещён" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

           ##просмотр обычной платной заявки в статусе отменена
  Scenario: check View modal form of Normal Pay Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006870/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006870/18" in form new request
    And check that number request in modal form request is displayed
    And check that element with name "Тип заявки (категория)" is displayed in modal form request
    And check that element with name "Тип дефекта" is displayed in modal form request
    And check that element with name "Исполнитель" is displayed in modal form request
    And check that element with name "ОДС" is displayed in modal form request
    And check that element with name "Управляющая компания" is displayed in modal form request
    And check that element with name "Описание" is displayed in modal form request
    And check that element with name "Приоритет" is displayed in modal form request
    And check that element with name "Обычная" is displayed in modal form request
    And check that element with name "Статус" is displayed in modal form request
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Оповещён" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request


  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


         ##просмотр аварийной платной заявки в статусе новая
  Scenario: check View modal form of Emergency Pay Request in status "New" on all elements
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
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной платной заявки в статусе ожидает обработки
  Scenario: check View modal form of Emergency Pay Request in status "Wait work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006859/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006859/18" in form new request
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
    And check that element with name "Ожидает обработки" is displayed in modal form request
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
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной платной заявки в статусе в работе
  Scenario: check View modal form of Emergency Pay Request in status "In work" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006854/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006854/18" in form new request
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
    And check that element with name "В работе" is displayed in modal form request
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
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    #And check that button with text "Отправить в АС" is visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is disable in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is not visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


            ##просмотр аварийной платной заявки в статусе закрыта
  Scenario: check View modal form of Emergency Pay Request in status "Closed" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-000006/19" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-000006/19" in form new request
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
    And check that element with name "Закрыта" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
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
    And click button with "Показать историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is displayed in history table
    And check that element with name "ФИО диспетчера" is displayed in history table
    And check that element with name "Исполнитель" is displayed in history table
    And check that element with name "Вид выполненных работ" is displayed in history table
    And click button with "Скрыть историю исполнения заявки" in modal form request
    And check that element with name "Время действия" is not displayed in history table
    And check that element with name "ФИО диспетчера" is not displayed in history table
    And check that element with name "Исполнитель" is not displayed in history table
    And check that element with name "Вид выполненных работ" is not displayed in history table
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной платной заявки в статусе отклонена
  Scenario: check View modal form of Emergency Pay Request in status "Rejected" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006850/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006850/18" in form new request
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
    And check that element with name "Отклонена" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Оповещён" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is visible in modal form request
    #And check that button with text "Оповещен" is visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request


           ##просмотр аварийной платной заявки в статусе отменена
  Scenario: check View modal form of Emergency Pay Request in status "Cancel" on all elements
    And press button with text "Создать заявку"
    And type to input text "0100-0101-006852/18" in searchField in form new request
    And click button findRequest in form newRequest
    And click button with text "0100-0101-006852/18" in form new request
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
    And check that element with name "Отменена" is displayed in modal form request
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
    And check that element with name "Вид выполненных работ" is displayed in modal form request
    And check that element with name "Оценка" is displayed in modal form request
    And check that element with name "Отзыв о работе" is displayed in modal form request
     # And check that element with name "Житель просит связаться по вопросу" is not displayed in modal form request
    And scroll to additionalPhone in ModalWindow
    And check that element with name "Дата составления" is displayed in modal form request
    And check that element with name "Принял заявку" is displayed in modal form request
    And check that element with name "Источник" is displayed in modal form request
    And check that element with name "Причина отмены" is displayed in modal form request
    And check that element with name "Причина отклонения" is displayed in modal form request
    And check that element with name "Оповещён" is displayed in modal form request
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
    And check that element with name "Оставить комментарий" is displayed in modal form request
    And check that element with name "Документы" is displayed in modal form request
    And check that element with name "Добавить комментарий" is displayed in modal form request
    And check that element with name "Добавить файл" is displayed in modal form request
    And check that button with text "Отправить в АС" is not visible in modal form request
    And check that button with text "Сохранить" is not visible in modal form request
    And check that button with text "Принять заявку" is not visible in modal form request
    And check that button with text "Печать" is not visible in modal form request
    And check that button with text "Отклонить" is not visible in modal form request
    And check that button with text "Отменить" is not visible in modal form request
    And check that button with text "Закрыть заявку" is not visible in modal form request
    And check that button with text "Передать на исполнение" is not visible in modal form request
    And check that button with text "Создать консультацию" is visible in modal form request
    And check that button with text "Проблемная ситуация" is not visible in modal form request
    And check that button with text "Недозвон" is not visible in modal form request
    And check that button with text "Оповещен" is not visible in modal form request
    And check that button with text "На доработку" is not visible in modal form request
    And check that button with text "Копировать заявку" is visible in modal form request

  Scenario: close card of request
    Given click close card of request

  Scenario: close form new request
    Given click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"