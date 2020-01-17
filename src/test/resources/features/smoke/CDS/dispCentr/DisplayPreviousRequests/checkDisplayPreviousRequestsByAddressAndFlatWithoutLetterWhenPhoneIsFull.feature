@dispCentr
Feature: smoke test, Отображение блока предыдущих заявок по адресу и квартире без буквы, когда заполнены поля адрес, подъезд, квартира и телефон, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests by address and flat without letter when phone is full
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And type to input "5" in field "Квартира" in form newRequest
    And click empty in form new request
    And type to input "(111) 111-11-11" in field "Основной" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And scroll to address in ModalWindow
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Квартира" is "5" in modal form request

  Scenario: close card of request
    And click close card of request

  Scenario: close form new request
    And click to close form new request


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"