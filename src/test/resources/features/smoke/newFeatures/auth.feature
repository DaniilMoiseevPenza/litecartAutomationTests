@auth
Feature: smoke test #1, Проверка авторизации на сайте

  Background:
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"

  Scenario Outline: check autorization page on all elements
    And check that element with name "<Имя элемента>" is displayed
    Examples:
    |Имя элемента|
    |Единый Диспетчерский Центр|
    |8 (495) 539-53-53|
    |Служба технической поддержки|
    |edc_support@mos.ru          |
    |8 (495) 268-01-68           |
    |Логин                       |
    |Пароль                      |
    |Оставаться в системе        |


#  Scenario: check negative authorization tests empty password
#
#    Given open start page "http://213.79.88.85"
#    And check that title page is "Единый Диспетчерский Центр"
#    And type to input with name login text: "test_ods_arbat"
#    And type to input with name password text: ""
#    When press button with text "Войти"
#   ## Then error message with text "Ошибка авторизации" is displayed
#   ## Then error message with text "Переданные параметры указаны не верно, исправьте ошибки и повторите попытку ещё раз" is displayed
#
#  Scenario: check negative authorization tests empty login
#
#    Given open start page "http://213.79.88.85"
#    And check that title page is "Единый Диспетчерский Центр"
#    And type to input with name login text: ""
#
#    When press button with text "Войти"
#    Then error message with text "Ошибка авторизации" is displayed
#   ## Then error message with text "Переданные параметры указаны не верно, исправьте ошибки и повторите попытку ещё раз" is displayed
#
#  Scenario: check negative authorization tests incorrect login
#
#    Given open start page "http://213.79.88.85"
#    And check that title page is "Единый Диспетчерский Центр"
#    And type to input with name login text: "fgffhjhvjg"
#
#    When press button with text "Войти"
#    Then error message with text "Ошибка авторизации" is displayed
#   ## Then error message with text "Вход в систему с этой рабочей станции недоступен" is displayed
#
#  Scenario: check negative authorization tests incorrect password
#
#    Given open start page "http://213.79.88.85"
#    And check that title page is "Единый Диспетчерский Центр"
#    And type to input with name login text: "testovyipp"
#    And type to input with name password text: "12345678"
#    When press button with text "Войти"
#    Then error message with text "Ошибка авторизации" is displayed
#    ##Then error message with text "Введены неверные логин или пароль" is displayed
#
#  Scenario: check negative authorization tests incorrect login and password
#
#    Given open start page "http://213.79.88.85"
#    And check that title page is "Единый Диспетчерский Центр"
#    And type to input with name login text: "111111111"
#    And type to input with name password text: "23tght"
#    When press button with text "Войти"
#    #Then error message with text "Ошибка авторизации" is displayed
#   ## Then error message with text "Переданные параметры указаны не верно, исправьте ошибки и повторите попытку ещё раз" is displayed
#
#  ##Scenario: check negative authorization tests with selected checkbox "Аутентификация через СУДИР"
#
#   ## Given open start page "http://test.test.edc2.altarix.org"
#    ##And check that page is "EDC 2.1"
#    ##And type to input with name login text: "admin"
#    ##And type to input with name password text: "Qwerty123"
#    ##And press button with text "Аутентификация через СУДИР"
#    ##When press button with text "Войти"
#    ##Then error message with text "Ошибка авторизации" is displayed
#    ##Then error message with text "Вход в систему с этой рабочей станции недоступен" is displayed
#
#  ##Scenario: check authorization tests with unselected checkbox "Аутентификация через СУДИР"
#
#    ##Given open start page "http://test.test.edc2.altarix.org"
#    ##And check that page is "EDC 2.1"
#    ##And type to input with name login text: "admin"
#    ##And type to input with name password text: "Qwerty123"
#    ##And press button with text "Аутентификация через СУДИР"
#    ##When press button with text "Войти"
#    ##Then check that page is "http://test.test.edc2.altarix.org/requests/active"
#    ##Then click to open support
#    ##Then  click button with "Выйти"
#    ##When check that page is "http://test.test.edc2.altarix.org/"
#
#
  Scenario Outline: check positive authorization tests
    When login "<Логин>"
    Then check that page is "center"
    Examples:
    |Логин|
    |кц   |


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"











