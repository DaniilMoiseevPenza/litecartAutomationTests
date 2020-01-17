@dispCentr
Feature: smoke test, Отображение блока Дополнительно на форме создания заявки роль ОДС (по адресу, который обслуживается одной одс)

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests with address and with ods
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Николощеповский переулок, дом 20/" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    And check that element with name "Дополнительно:" is visible in block additional
    And check that element with name "ОДС авто" is visible on block additional
    And check that element with name "Арбат (ЦАО)" is visible on block additional
    And check that element with name "Дом обслуживается" is visible on block additional
    And check that element with name "ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ ГОРОДА МОСКВЫ «ЖИЛИЩНИК РАЙОНА АРБАТ»" is visible on block additional
    And check that element with name "74992412125" is visible on block additional
    And check that element with name "121099, ГОРОД МОСКВА, ПЕРЕУЛОК ПРОТОЧНЫЙ, дом 9, строение 1" is visible on block additional
    And check that element with name "жилые" is visible on block additional
    And clear address in form new request

  Scenario: close form new request
    And click to close form new request


  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"

