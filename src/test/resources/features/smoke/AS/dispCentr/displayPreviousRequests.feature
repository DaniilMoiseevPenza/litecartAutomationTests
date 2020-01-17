Feature: smoke test #1, Отображение блока предыдущих и найденных заявок

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  ##открытие формы Новая заявка
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

    ##отображение предыдущих заявок по адресу
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address in formNewRequestAddress
    And check that element with name "Предыдущие" is not visible in form newRequest
    And check that element with name "Номер заявки" is not visible in form newRequest
    And check that element with name "Дата" is not visible in form newRequest
    And check that element with name "Дефект" is not visible in form newRequest
    And check that element with name "Статус" is not visible in form newRequest

    ##отображение предыдущих заявок по адресу и подъезду
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And check that element with name "Предыдущие" is visible in form newRequest
    And check that element with name "Номер заявки" is visible in form newRequest
    And check that element with name "Дата" is visible in form newRequest
    And check that element with name "Дефект" is visible in form newRequest
    And check that element with name "Статус" is visible in form newRequest
    And check that count of previous requests is 10
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Подъезд" is "1" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и квартире (без буквы)
  Scenario: close card of request
    And type to input "2" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Квартира" is "2" in modal form request
    And check that field "Подъезд" is "1" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и квартире (с буквой)
  Scenario: close card of request
    And type to input "а" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Квартира" is "2а" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и телефону
  Scenario: close card of request
    And clear entrance in newForm
    And clear appartment in newForm
    And click empty in form new request
#    And click delete ru.altarix.edc2.data in field with name "Подъезд"
#    And click delete ru.altarix.edc2.data in field with name "Квартира"
    And type to input "(111) 111-11-11" in field "Основной" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And scroll to address in ModalWindow
    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и подъезду
  Scenario: close card of request
    And type to input "3" in field "Подъезд" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Подъезд" is "3" in modal form request
    And check that field "Основной телефон" is not "+7 (111) 111-11-11" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и квартире
  Scenario: close card of request
    And type to input "4" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Подъезд" is not "3" in modal form request
    And check that field "Основной телефон" is not "+7 (111) 111-11-11" in modal form request
    And check that field "Квартира" is "4" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по телефону
  Scenario: close card of request
    And clear entrance in newForm
    And clear appartment in newForm
    And clear address in form new request
    And click empty in form new request
#    And click delete ru.altarix.edc2.data in field with name "Подъезд"
#    And click delete ru.altarix.edc2.data in field with name "Квартира"
#    And click delete ru.altarix.edc2.data in field with name "Адрес"
    And click first number of request in block previousRequests
    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request

  Scenario: close card of request
    And click close card of request


    ##отображение найденных заявок
  Scenario: check display found requests
    And click fieldSearchOnNumberRequest in form newRequest
    And type to input with name searchOnNumberRequest text: "0200-0000-024755/18" in form newRequest
    And click button findRequest in form newRequest
    And check that element with name "Найденные" is visible in form newRequest
    And click first number of request in block previousRequests
    And check that number request with name "0200-0000-024755/18" is displayed in modal form request
    And click close card of request
    And clear fieldSearchOnNumberRequest in form newRequest
    And click empty in form new request
#    And check that element with name "Предыдущие" is visible in form newRequest
#    And click first number of request in block previousRequests
#    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request
#    And click close card of request

  Scenario: close card of request
    And click close card of request


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
