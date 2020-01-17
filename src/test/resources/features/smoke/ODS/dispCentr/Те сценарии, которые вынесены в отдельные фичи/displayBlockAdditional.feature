@dispCentr
Feature: smoke test #1, Отображение блока Дополнительно на форме создания заявки роль ОДС

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  ##проверка открытия формы создания заявки
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

  Scenario: check display previous requests with address with ods
    ##проверка отображения блока Дополнительно (ввод адреса, который обслуживается ОДС)
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

  Scenario: check display previous requests with address with two ods
     ##проверка отображения блока Дополнительно (ввод адреса, который обслуживается двумя ОДС)
    And type to input "1-й Смоленский переулок, дом 13" in field "Адрес" in form newRequest
    And click first address with text "1-й Смоленский переулок, дом 13"
    And check that element with name "Дополнительно:" is visible in block additional
    And check that element with name "ОДС авто" is visible on block additional
    And check that element with name "Арбат (ЦАО)" is visible on block additional
    And check that element with name "ОДС № 1" is visible on block additional
    And check that element with name "1-й Смоленский переулок, дом 13" is visible on block additional
    And check that element with name "Арбат (ЦАО)" is visible on block additional
    #And check that element with name "+7 (333) 444-55-56" is visible on block additional
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
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"





