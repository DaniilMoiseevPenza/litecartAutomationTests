@dispCentr
Feature: smoke test, Проверка фильтрации заявок роль ОДС (поле адрес)

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr adress
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And wait pagination disp centr
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "по" in filtr "Адрес" in dispCentr
    And check that first adress in filtr adress is not visible
    And type to input "1-й Николощеповский переулок, дом 20/" in filtr "Адрес" in dispCentr
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    #And click first address in filtrAddress
    And type to input "1" in filtr "Подъезд" in dispCentr
    And type to input "1" in filtr "Этаж" in dispCentr
    And type to input "1" in filtr "Квартира" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Адрес дома"
    And click choose column "Квартира"
    And click choose column "Этаж"
    And click choose column "Подъезд"
    And click choose colums apply
    And check that addresses in grid is "1-й Николощеповский переулок, дом 20/4"
    And check that flats in grid is "1"
    And check that floors in grid is "1"
    And check that enterances in grid is "1"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"