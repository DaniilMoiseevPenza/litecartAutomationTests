@dispCentr
Feature: smoke test, Отображение блока найденных заявок, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display found requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And check that element with name "Предыдущие" is visible in form newRequest
    And check that element with name "Номер заявки" is visible in form newRequest
    And check that element with name "Дата" is visible in form newRequest
    And check that element with name "Дефект" is visible in form newRequest
    And check that element with name "Статус" is visible in form newRequest
    And click fieldSearchOnNumberRequest in form newRequest
    And type to input with name searchOnNumberRequest text: "0100-0101-006859/18" in form newRequest
    And click button findRequest in form newRequest
    And check that element with name "Найденные" is visible in form newRequest
    And click first number of request in block previousRequests
    And check that number request with name "0100-0101-006859/18" is displayed in modal form request
    And click close card of request
    And clear fieldSearchOnNumberRequest in form newRequest
    And click empty in form new request
    And check that element with name "Предыдущие" is visible in form newRequest
    And click first number of request in block previousRequests
    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request
    And click close card of request

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
