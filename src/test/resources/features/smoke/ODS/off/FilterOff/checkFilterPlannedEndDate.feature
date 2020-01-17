@off, @оds
Feature: smoke test, Поиск в фильтре отключений по полю плановая дата окончания, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Planned End Date
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And open start page "disablings"
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Плановая дата окончания" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Плановая дата окончания" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that planned date off between "25.02.2019 17:48" and "28.02.2019 17:48"

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"