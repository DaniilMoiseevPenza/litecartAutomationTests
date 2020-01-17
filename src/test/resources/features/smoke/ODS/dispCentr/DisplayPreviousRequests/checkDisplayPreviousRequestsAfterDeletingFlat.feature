@dispCentr
Feature: smoke test, Отображение блока предыдущих заявок при удалении квартиры при заполненных полях: адрес, подъезд, квартира, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests after deleting phone
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And type to input "1" in field "Подъезд" in form newRequest
    And click empty in form new request
    And type to input "5" in field "Квартира" in form newRequest
    And click empty in form new request
    And click first number of request in block previousRequests
    And scroll to address in ModalWindow
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Квартира" is "5" in modal form request
    And click close card of request
    And clear appartment in newForm
    And click empty in form new request
    And click first number of request in block previousRequests
    And scroll to address in ModalWindow
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4" in modal form request
    And check that field "Подъезд" is "1" in modal form request

  Scenario: close card of request
    And click close card of request

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"