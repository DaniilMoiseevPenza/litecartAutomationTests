Feature: smoke test #1, Проверка формы Новая заявка на соответствие полей

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check form New Request on display of field
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And check that element address is displayed
    And check that element comment to address is displayed
    And check that element entrance is displayed
    And check that element floor is displayed
    And check that element apartment is displayed
    And check that element domophone is displayed
    And check that element with name "неизвестен" is displayed
    And check that element with name "№ квартиры" is displayed
    And check that element with name "консьерж" is displayed
    And check that element with name "другой" is displayed
    And check that element main phone is displayed
    And check that element with name "Дополнительный телефон:" is displayed
    And check that element contact person is displayed
    And check that element desired time  is displayed
    And check that element with name "сегодня" is displayed
    And check that element with name "завтра" is displayed
    And check that element with name "первая половина" is displayed
    And check that element with name "вторая половина" is displayed
    And check that element with name "особые условия" is displayed
    And check that element source is displayed
    And check that element type request is displayed
    And check that element normal priority is disabled
    And check that element description of the problems is displayed
    And check that element find request is displayed
    And check that element save request is disabled
    And check that element warning new request is displayed


  Scenario: logout
    Given click to close form new request
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
