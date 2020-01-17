@off, @cds
Feature: smoke test, Проверка кнопки Отменить в фильтре отключений, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Button Cancel
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" "" in off
    And click button with text "Отменить" in filtrOff
    And click button filtroff
    And check that text is not empty in filtr "Адрес"


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"