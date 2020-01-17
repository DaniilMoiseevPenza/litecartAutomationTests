Feature: smoke test #1, Отображение блока Дополнительно на форме создания заявки

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  ##проверка открытия формы создания заявки
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

    ##проверка отображения блока Дополнительно (ввод адреса, который обслуживается ОДС)
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address in formNewRequestAddress
    And check that element with name "Дополнительно:" is visible in block additional
    And check that element with name "ОДС автоматизация" is visible on block additional
    And check that element with name "+7 (222) 222-22-22" is visible on block additional
    And check that element with name "Кокошкино" is visible on block additional
    And check that element with name "НАО" is visible on block additional
    And check that element with name "Дом обслуживается" is visible on block additional
    And check that element with name "жилые" is visible on block additional
    And check that element with name "Отключения по адресу:" is visible on block additional

  Scenario: close form new request
    And click to close form new request


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"





