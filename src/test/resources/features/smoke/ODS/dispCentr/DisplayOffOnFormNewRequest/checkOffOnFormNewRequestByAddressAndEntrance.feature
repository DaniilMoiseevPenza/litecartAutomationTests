@dispCentr
Feature: smoke test, Отображение отключений на форме создания заявки, роль ОДС (по адресу и подъезду)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check off on form new request by address and entrance
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And type to input "1" in field "Подъезд" in form newRequest
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is visible in block additional
    And check that element with name "Отключения по квартире" is not visible in block additional

  Scenario: close modal card off
    And click to close modal card off

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"