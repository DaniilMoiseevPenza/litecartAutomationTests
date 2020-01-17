@off, @cds
Feature: smoke test, Поиск по неполному номеру отключения, роль ЦДС
  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search By Not Full Number Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And type to input with fieldSearch text: "266117"
    And click button enter
    And check that element with name "Результаты не найдены" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"