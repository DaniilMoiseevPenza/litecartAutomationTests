@dispCentr
Feature: smoke test, Проверка поиска по номеру заявки после применения фильтра, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check the search on number request after filtr
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "1111111111" in filtr "Телефон" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Телефон основной"
    And click choose column "Телефон дополнительный"
    And click choose colums apply
    And check that column "Телефон основной" is "+7 (111) 111-11-11"
    And click fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006862/18"
    And click button findRequest
    And click on first request
    And check that element with name "0100-0101-006862/18" is displayed in request
    And clear fieldSearchOnNumberRequest in startPage
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "1111111111" in filtr "Телефон" in dispCentr
    And press button with text "Применить"
    And check that column "Телефон основной" is "+7 (111) 111-11-11"

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"