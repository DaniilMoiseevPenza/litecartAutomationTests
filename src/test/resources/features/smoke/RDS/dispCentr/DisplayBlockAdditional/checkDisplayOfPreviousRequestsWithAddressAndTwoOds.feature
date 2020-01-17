@dispCentr
Feature: smoke test #1, Отображение блока Дополнительно на форме создания заявки роль РДС (по адресу, который обслуживается двумя одс)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display previous requests with address with two ods
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And type to input "1-й Смоленский переулок, дом 13" in field "Адрес" in form newRequest
    And click first address with text "1-й Смоленский переулок, дом 13"
    And check that element with name "Дополнительно:" is visible in block additional
    And check that element with name "ОДС авто" is visible on block additional
    And check that element with name "Арбат (ЦАО)" is visible on block additional
    And check that element with name "ОДС № 1" is visible on block additional
    And check that element with name "1-й Смоленский переулок, дом 13" is visible on block additional
    And check that element with name "Арбат (ЦАО)" is visible on block additional
    And check that element with name "73334445556" is visible on block additional
    And check that element with name "Дом обслуживается" is visible on block additional
    And check that element with name "ЖИЛИЩНО - СТРОИТЕЛЬНЫЙ КООПЕРАТИВ ГОСУДАРСТВЕННОГО АКАДЕМИЧЕСКОГО БОЛЬШОГО ТЕАТРА «ЛИРА»" is visible on block additional
    And check that element with name "74992419529" is visible on block additional
    And check that element with name "город Москва, 1-й Смоленский переулок, дом 13" is visible on block additional
    And check that element with name "жилые" is visible on block additional

  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"