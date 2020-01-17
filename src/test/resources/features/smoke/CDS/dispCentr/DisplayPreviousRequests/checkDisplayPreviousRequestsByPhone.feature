@dispCentr
Feature: smoke test #1, Отображение блока предыдущих заявок по телефону, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests by phone
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "(111) 111-11-11" in field "Основной" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And scroll to address in ModalWindow
    And check that field "Основной телефон" is "+7 (111) 111-11-11" in modal form request

  Scenario: close card of request
    And click close card of request

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
