@dispCentr
Feature: smoke test, Открытие модальной карточки отключения из формы новая заявка, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check opening modal card off by hyperlink
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    And check that element with name "Отключения по адресу" is visible in block additional
    And click to open modal window off
    And check that element with name "Замена оборудования в ЦТП" is visible in modalWindowOff
    And check that element with name "1-й Николощеповский переулок, дом 20/4" is visible in modalWindowOff

  Scenario: close modal card off
    And click to close modal card off

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
