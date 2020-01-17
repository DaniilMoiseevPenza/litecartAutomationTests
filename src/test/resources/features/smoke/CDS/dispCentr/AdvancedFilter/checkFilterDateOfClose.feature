@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ЦДС (поле дата закрытия)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr date of close
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And click to field date close with
    And type to input text "20.08.2018 06:00" in "Дата закрытия:" "с" in filtr
    And click empty in form filtr of request
    And click to field date close by
    And type to input text "23.08.2018 23:00" in "Дата закрытия:" "по" in filtr
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button custom
    And click choose colums apply
    And check that date close of request in card between "20.08.2018 06:00" and "23.08.2018 23:00"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"