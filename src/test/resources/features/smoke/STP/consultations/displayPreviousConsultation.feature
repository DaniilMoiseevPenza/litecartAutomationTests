@consultation @stp
Feature: smoke test #1, Отображение блока предыдущих консультаций под СТП

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

    ##отображение предыдущих консультаций по адресу
    And type to input "улица Яблочкова, дом 25" in field "Адрес" in form newRequest
    And click address "улица Яблочкова, дом 25" in filtrAddress
    And check that element with name "Предыдущие" is visible in form newRequest
    And check that element with name "Номер" is visible in form newRequest
    And check that element with name "Дата" is visible in form newRequest
    And check that element with name "Категория" is visible in form newRequest
    And check that element with name "Тип" is visible in form newRequest
    And check that element with name "Описание" is visible in form newRequest
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по адресу и подъезду
  Scenario: view previus consultation with address and enterence
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And check that element with name "Предыдущие" is visible in form newRequest
    And check that element with name "Номер" is visible in form newRequest
    And check that element with name "Дата" is visible in form newRequest
    And check that element with name "Категория" is visible in form newRequest
    And check that element with name "Тип" is visible in form newRequest
    And check that element with name "Описание" is visible in form newRequest
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" in modal card of consultation
    And check that field "Подъезд" is "1" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по адресу и квартире (без буквы)
  Scenario: view previus consultation with address and flat without letter
    And clear entrance in newForm
    And type to input "70" in field "Квартира" in form newRequest
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that field "Адрес" is "улица Яблочкова, дом 25" in modal card of consultation
    And check that field "Квартира" is "70" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по адресу и квартире (с буквой)
  Scenario: view previus consultation with address and flat with letter
    And type to input "а" in field "Квартира" in form newRequest
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" in modal card of consultation
    And check that field "Квартира" is "70а" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по адресу или телефону
  Scenario: view previus consultation with address and phone
    And clear appartment in newForm
    And type to input "(111) 111-11-11" in field "Основной" in form newRequest
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" or "Телефон основной" is "+7 (111) 111-11-11" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation


    ##отображение предыдущих консультаций по адресу+подъезду или телефону
  Scenario: view previus consultation with address + enterence or phone
    And type to input "5" in field "Подъезд" in form newRequest
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" and "Подъезд" is "5" or "Телефон основной" is "+7 (111) 111-11-11" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по адресу+квартире или телефоне
  Scenario: view previus consultation with address + flat or phone
    And clear entrance in newForm
    And type to input "70" in field "Квартира" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Адрес" is "улица Яблочкова, дом 25" and "Квартира" is "70" or "Телефон основной" is "+7 (111) 111-11-11" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по телефону
  Scenario: view previus consultation with phone
    And clear appartment in newForm
    And clear address in form new request
    And click empty in form new request
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that element with name "Просмотр консультации № " is visible in modal card of consultation
    And check that field "Телефон основной" is "+7 (111) 111-11-11" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

    ##отображение предыдущих консультаций по телефону(при первичном открытии формы создания консультации) и подтягивание данных в форму из консультации
  Scenario: view previus consultation with phone + auto put fields
    And click to close form new request
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And click checkbox consultation
    And check that page is "Новая консультация" in form newRequest
    And type to input "(222) 222-22-22" in field "Основной" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And check that count of previous requests is 10
#    проверить что подтягиваются данные из последней консультации - пока не работает
    And click first number of request in block previousRequests
    And check that field "Телефон основной" is "+7 (222) 222-22-22" in modal card of consultation

  Scenario: close modal card of consultation
    And click to close modal card of consultation

  Scenario: close form new request
    And click to close form new request


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"