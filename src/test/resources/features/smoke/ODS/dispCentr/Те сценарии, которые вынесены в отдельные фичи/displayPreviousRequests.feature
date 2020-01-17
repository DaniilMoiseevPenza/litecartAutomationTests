@dispCentr
Feature: smoke test #1, Отображение блока предыдущих и найденных заявок роль ОДС

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  ##открытие формы Новая заявка
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

    ##отображение предыдущих заявок по адресу
    And type to input "1-й Николощеповский переулок, дом 20" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20"
    And check that element with name "Предыдущие" is not visible in form newRequest
    And check that element with name "Номер заявки" is not visible in form newRequest
    And check that element with name "Дата" is not visible in form newRequest
    And check that element with name "Дефект" is not visible in form newRequest
    And check that element with name "Статус" is not visible in form newRequest

    ##отображение предыдущих заявок по адресу и подъезду
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
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
  Scenario: previus tickets adress + flat
    And type to input "5" in field "Квартира" in form newRequest
    And click empty in form new request
    And click empty in form new request
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Квартира" is "5" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и квартире (с буквой)
  Scenario: previus tickets adress + flat with letter
    And type to input "а" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Квартира" is "5а" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и телефону
  Scenario: previus tickets adress + phone
    And clear entrance in newForm
    And click empty in form new request
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
  Scenario: previus tickets adress + enterence
    And type to input "3" in field "Подъезд" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Подъезд" is "3" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по адресу и квартире
  Scenario: previus tickets adress + flat
    And type to input "4" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Квартира" is "4" in modal form request

  Scenario: close card of request
    And click close card of request

    ##отображение предыдущих заявок по телефону
  Scenario: previus tickets phone
    And clear entrance in newForm
    And click empty in form new request
    And clear appartment in newForm
    And click empty in form new request
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
    And type to input with name searchOnNumberRequest text: "0100-0101-006859/18" in form newRequest
    And click button findRequest in form newRequest
    And check that element with name "Найденные" is visible in form newRequest
    And click first number of request in block previousRequests
    And check that number request with name "0100-0101-006859/18" is displayed in modal form request
    And click close card of request
    And clear fieldSearchOnNumberRequest in form newRequest
    And click empty in form new request
#    And check that element with name "Предыдущие" is visible in form newRequest
#    And click first number of request in block previousRequests
#    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request
#    And click close card of request

  Scenario: close form new request
    And click to close form new request


  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"
