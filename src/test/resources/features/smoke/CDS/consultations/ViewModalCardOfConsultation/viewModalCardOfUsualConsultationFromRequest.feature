@consultations, @cds
Feature: smoke test, Просмотр карточки обычной консультации из заявки

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Modal Card Of Usual Consultation From Request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "1100-0000-267138/18"
    And click button findRequest
    And click on first request
    And check that element with name "1100-0000-267138/18" is displayed in request
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
    And check that element with name "Комментарии" is visible in modal card of consultation
    And check that button with name "Добавить файл" is visible in modal card of consultation
    And check that button with name "Проблема решена" is not visible in modal card of consultation
    And click to close modal card of consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"