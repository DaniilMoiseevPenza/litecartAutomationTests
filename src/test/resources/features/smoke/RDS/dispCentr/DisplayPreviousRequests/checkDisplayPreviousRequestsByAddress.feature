@dispCentr
Feature: smoke test, Отображение блока предыдущих заявок по адресу, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests by address
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And check that element with name "Предыдущие" is not visible in form newRequest
    And check that element with name "Номер заявки" is not visible in form newRequest
    And check that element with name "Дата" is not visible in form newRequest
    And check that element with name "Дефект" is not visible in form newRequest
    And check that element with name "Статус" is not visible in form newRequest

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
