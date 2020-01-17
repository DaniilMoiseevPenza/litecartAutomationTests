@consultation @callcentr
Feature: smoke test #1, Просмотр модального окна карточки консультации под КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

    ##открытие формы Новая заявка
  Scenario: check of opening form new consultation
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And click checkbox consultation
    And check that page is "Новая консультация" in form newRequest

    ##просмотр обычной консультации из формы создания консультации
  Scenario: view problem consultation in form consultation
    And type to input "(268) 281-53-21" in field "Основной" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is not visible in modal card of consultation
    And check that element with name "Проблема решена" is not visible in modal card of consultation
    And check that element with name "Закрыл проблемную ситуацию" is not visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation

    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

  Scenario: close form new consultation
    And click to close form new consultation


    ##просмотр проблемной консультации из формы создания консультации
    #And clear phone in newForm
  Scenario: view problem consultation in form consultation
    And press button with text "Создать заявку"
    And click checkbox consultation
    And type to input "(939) 891-86-53" in field "Основной" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is visible in modal card of consultation
    And check that checkbox "Проблемная ситуация" is selected
    And check that element with name "Проблема решена" is visible in modal card of consultation
    And check that checkbox "Проблема решена" is not selected
    And check that element with name "Закрыл проблемную ситуацию" is not visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

  Scenario: close form new consultation
    And click to close form new consultation

    ##просмотр решенной консультации из формы создания консультации
  Scenario: view resolved consultation in form consultation
    And press button with text "Создать заявку"
    And click checkbox consultation
    And type to input "(474) 133-49-15" in field "Основной" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is visible in modal card of consultation
    And check that checkbox "Проблемная ситуация" is selected
    And check that element with name "Проблема решена" is visible in modal card of consultation
    And check that checkbox "Проблема решена" is selected
    And check that element with name "Закрыл проблемную ситуацию" is visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

  Scenario: close form new consultation
    And click to close form new consultation


   ##просмотр обычной консультации из формы просмотра заявки
  Scenario: view normal consultation in form request
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0400-0406-007392/18"
    And click button findRequest
    And click on first request
    And check that element with name "0400-0406-007392/18" is displayed in request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is not visible in modal card of consultation
    And check that element with name "Проблема решена" is not visible in modal card of consultation
    And check that element with name "Закрыл проблемную ситуацию" is not visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

 ##просмотр проблемной консультации из формы просмотра заявки
  Scenario: view problem consultation in form request
    And clear fieldSearchOnNumberRequest in startPage
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0200-0202-002531/18"
    And click button findRequest
    And click on first request
    And check that element with name "0200-0202-002531/18" is displayed in request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is visible in modal card of consultation
    And check that checkbox "Проблемная ситуация" is selected
    And check that element with name "Проблема решена" is visible in modal card of consultation
    And check that checkbox "Проблема решена" is not selected
    And check that element with name "Закрыл проблемную ситуацию" is not visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

     ##просмотр решенной консультации из формы просмотра заявки
  Scenario: view resolved consultation in form request
    And clear fieldSearchOnNumberRequest in startPage
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0300-0308-001258/18"
    And click button findRequest
    And click on first request
    And check that element with name "0300-0308-001258/18" is displayed in request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that element with name "Номер консультации" is visible in modal card of consultation
    And check that element with name "ОДС" is visible in modal card of consultation
    And check that element with name "Дата составления" is visible in modal card of consultation
    And check that element with name "Категория консультации" is visible in modal card of consultation
    And check that element with name "Проблемная ситуация" is visible in modal card of consultation
    And check that checkbox "Проблемная ситуация" is selected
    And check that element with name "Проблема решена" is visible in modal card of consultation
    And check that checkbox "Проблема решена" is selected
    And check that element with name "Закрыл проблемную ситуацию" is visible in modal card of consultation
    And check that element with name "Тип консультации" is visible in modal card of consultation
    And check that element with name "Описание" is visible in modal card of consultation
    And check that element with name "Адрес" is visible in modal card of consultation
    And check that element with name "Подъезд" is visible in modal card of consultation
    And check that element with name "Этаж" is visible in modal card of consultation
    And check that element with name "Квартира" is visible in modal card of consultation
    And check that element with name "Комментарий к адресу" is not visible in modal card of consultation
    And check that element with name "Контактное лицо" is visible in modal card of consultation
    And check that element with name "Телефон основной" is visible in modal card of consultation
    And check that element with name "Телефон дополнительный" is visible in modal card of consultation
    And scroll to by request in ModalConsultation
    And check that element with name "По заявке" is visible in modal card of consultation
    And check that element with name "По отключению" is visible in modal card of consultation
    And check that element with name "Оказал консультацию" is visible in modal card of consultation
    And check that element with name "АОН" is visible in modal card of consultation
    And check that element with name "Идентификатор звонка" is visible in modal card of consultation
    And check that element with name "Логин оператора" is visible in modal card of consultation
    And check that element with name "Оставить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить комментарий" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"