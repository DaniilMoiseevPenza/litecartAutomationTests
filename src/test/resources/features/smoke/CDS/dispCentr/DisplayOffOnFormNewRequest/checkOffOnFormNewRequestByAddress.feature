@dispCentr
Feature: smoke test, Отображение отключений на форме создания заявки, роль ЦДС (по адресу)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check off on form new request by address
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Замена оборудования в котельной" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Неисправность на сетях ГВС" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Замена оборудования в котельной" is visible in block additional
    And check that element with name "Отключения подъезда" is not visible in block additional
    And check that element with name "Отключения по квартире" is not visible in block additional

  Scenario: close modal card off
    And click to close modal card off

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"