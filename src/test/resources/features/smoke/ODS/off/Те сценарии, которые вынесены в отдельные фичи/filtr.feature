@off, @ods
Feature: smoke test #1, Проверка страницы Фильтр отключений

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And open start page "disablings"
    And click button filtroff
    And check that element with name "Район" is not displayed in filtr off
    And check that element with name "Адрес" is displayed in filtr off
    And check that element with name "№ ОДС" is not displayed in filtr off
    And check that element with name "Округ:" is not displayed in filtr off
    And check that element with name "Вид отключения" is displayed in filtr off
    And check that element with name "Тип отключения" is displayed in filtr off
    And check that element with name "Ведет работы" is displayed in filtr off
    And check that element with name "Плановая дата начала" is displayed in filtr off
    And check that element with name "Фактическая дата начала" is displayed in filtr off
    And check that element with name "Плановая дата окончания" is displayed in filtr off
    And check that element with name "Фактическая дата окончания" is displayed in filtr off
    And check that element with name "Применить" is displayed in filtr off
    And check that element with name "Отменить" is displayed in filtr off
    And check that element with name "Сбросить фильтр" is displayed in filtr off
    And click button filtroff


  Scenario: Проверка поиска отключений по фильтру.Поле адрес
    Given open start page "disablings"
    And click button filtroff
    And type to input text "по" in filtr "Адрес" "" in off
    And check that first address is empty in filtr off
    And type to input text "1-й Николощеповский переулок, дом 20/" in filtr "Адрес" "" in off
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    And click button with text "Применить" in filtrOff
    And check that address in grid is "1-й Николощеповский переулок, дом 20/4"


  Scenario: Проверка поиска отключений по фильтру.Поле Вид отключения - Аварийное
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click checkbox EmergencyOff
    And click button with text "Применить" in filtrOff
    And check that emergency in grid is "Аварийное отключение"
    And click first off
    And check that emergency off in card off is "Аварийное отключение"



  Scenario: Проверка поиска отключений по фильтру.Поле Вид отключения - Плановое
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click checkbox PlannedOff
    And click button with text "Применить" in filtrOff
    And check that emergency in grid is "Плановое отключение"
    And click first off
    And check that planned off in card off is "Плановое отключение"


  Scenario: Проверка поиска отключений по фильтру.Поле Тип отключения
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "Залив канализационной водой" in filtr "Тип отключения" "" in off
    And click off defect "Залив канализационной водой" in filttr off
    And click button with text "Применить" in filtrOff
    And check that disabling the service in grid is "Водоотведение (канализация)"
    And check that type off in grid is "Залив канализационной водой"

  Scenario: Проверка поиска отключений по неполному номеру отключения
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click button filtroff
    And type to input with fieldSearch text: "266117"
    And click button enter
    And check that element with name "Результаты не найдены" is displayed

  Scenario: Проверка поиска отключений по номеру отключения
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click button filtroff
    And type to input with fieldSearch text: "14294202"
    And click button enter
    And check that number off in grid is "14294202"
    And clear fieldSearch in off


  Scenario: Проверка поиска отключений по фильтру.Поле Ведет работы
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to organization in filtrWorkOff
    And type to input text "организация по отключению" in filtr "Ведет работы" "" in off
    And click organization in filtr off with name "организация по отключению"
    And click button with text "Применить" in filtrOff
    And scroll to column with name "Дата создания"
    And check that work in grid is "организация по отключению"


  Scenario: Проверка поиска отключений по фильтру.Поле Плановая дата начала
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Плановая дата начала" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Плановая дата начала" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that date create off between "01.02.2019 17:48" and "25.02.2019 17:48"


  Scenario: Проверка поиска отключений по фильтру.Поле Фактическая дата начала
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Фактическая дата начала" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Фактическая дата начала" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that date off between "25.02.2019 17:48" and "28.02.2019 17:48"


  Scenario: Проверка поиска отключений по фильтру.Поле Плановая дата включения
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Плановая дата окончания" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Плановая дата окончания" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that planned date off between "25.02.2019 17:48" and "28.02.2019 17:48"


  Scenario: Проверка поиска отключений по фильтру.Поле Дата фактического отключения
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "01.02.2019 17:48" in filtr "Фактическая дата окончания" "c" in off
    And click empty in form filtr off
    And type to input text "25.02.2019 17:48" in filtr "Фактическая дата окончания" "по" in off
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And scroll to column with name "Дата создания"
    And check that facted date off between "01.02.2019 17:48" and "25.02.2019 17:48"


  Scenario: Проверка кнопки отменить в фильтре
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" "" in off
    And click button with text "Отменить" in filtrOff
    And click button filtroff
    And check that text is empty in filtr "Адрес"


  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"







































    