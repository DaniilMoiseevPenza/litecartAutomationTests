@dispCentr
Feature: smoke test, Отображение отключений на форме создания заявки, роль ЦДС (по адресу, подъезду и квартире)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check off in form new request enterence and flat
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And type to input "1" in field "Подъезд" in form newRequest
    And type to input "1" in field "Квартира" in form newRequest
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is visible in block additional
    And check that element with name "Отключения по квартире" is visible in block additional

  Scenario: close modal card off
    And click to close modal card off

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
