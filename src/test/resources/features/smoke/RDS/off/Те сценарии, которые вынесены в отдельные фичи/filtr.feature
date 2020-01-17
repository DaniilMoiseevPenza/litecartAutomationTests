@off, @rds
Feature: smoke test #1, Проверка страницы Фильтр отключений

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button filtroff
    And check that element with name "Район" is not displayed in filtr off
    And check that element with name "Адрес" is displayed in filtr off
    And check that element with name "№ ОДС" is displayed in filtr off
    And check that element with name "Округ:" is not displayed in filtr off
    And check that element with name "Вид отключения:" is displayed in filtr off
    And check that element with name "Аварийное отключение" is displayed in filtr off
    And check that element with name "Плановое отключение" is displayed in filtr off
    And check that element with name "Тип отключения:" is displayed in filtr off
    And check that element with name "Ведет работы:" is displayed in filtr off
    And check that element with name "Дата создания:" is displayed in filtr off
    And check that element with name "Дата отключения:" is displayed in filtr off
    And check that element with name "Плановая дата включения:" is displayed in filtr off
    And check that element with name "Дата фактического включения:" is displayed in filtr off
    And check that element with name "Применить" is displayed in filtr off
    And check that element with name "Отменить" is displayed in filtr off
    And check that element with name "Сбросить фильтр" is displayed in filtr off
    And click button filtroff

  Scenario: Проверка поиска удаленных отключений
    And click checkbox show deleted
    And click first off
    And check that buttonRestart is displayed
    And click checkbox show deleted
    And click collapse off


  Scenario: check filter №ODS
    And click button filtroff
    And click to fieldOds in filtrOff
    And type to input text "Автоматизация ОДС" in filtr "№ ОДС" in filtrOff
    And click first string with name "Автоматизация ОДС"
#    And click first ods in fieldOds in filtrOff



  Scenario: Проверка поиска отключений по фильтру.Поле адрес
    And type to input text "по" in filtr "Адрес" in filtrOff
    And check that first address is empty in filtr off
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in filtrOff
    And click to first address in filtrAddressOff
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
    And click fieldTypeOff in filtrOff
    And click off category "Горячее водоснабжение (ГВС)" in filtr off
    And click off defect "Замена оборудования в котельной" in filttr off
#    And type to input text "Залив канализационной водой" in filtr "Тип отключения" in filtrOff
#    And click first type off
    And click button with text "Применить" in filtrOff
    And check that disabling the service in grid is "Водоотведение (канализация)"
    And check that type off in grid is "Залив канализационной водой"


  Scenario: Проверка поиска отключений по фильтру.Поле Ведет работы
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "ГБУ Жилищник (Арбат, Бассманный)" in filtr "Ведет работы" in filtrOff
    And click first string with name "ГБУ Жилищник (Арбат, Бассманный)"
#    And click to first organization in filtrWorkOff
    And click button with text "Применить" in filtrOff
    And check that work in grid is "ГБУ Жилищник (Арбат, Бассманный)"
    And click collapse off


  Scenario: Проверка поиска отключений по фильтру.Поле Дата создания
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to field date create with
    And click to calendar
    And type to input text "01.10.2018 06:00" in dateCreateWith in filtr
    And click empty in form filtr off
    And click to field date create by
    And click to calendar
    And type to input text "15.10.2018 23:00" in dateCreateBy in filtr
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And scroll to create date off in grid off
    And check that date create off between "01.10.2018 06:00" and "15.10.2018 23:00"


  Scenario: Проверка поиска отключений по фильтру.Поле Дата отключения
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to field date off with
    And click to calendar
    And type to input text "02.10.2018 10:00" in dateOffWith in filtr
    And click empty in form filtr off
    And click to field date off by
    And click to calendar
    And type to input text "05.10.2018 23:00" in dateOffBy in filtr
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that date off between "02.10.2018 10:00" and "05.10.2018 23:00"



  Scenario: Проверка поиска отключений по фильтру.Поле Плановая дата включения
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to field planned date off with
    And click to calendar
    And type to input text "01.10.2018 06:00" in plannedDateOffWith in filtr
    And click empty in form filtr off
    And click to field planned date off by
    And click to calendar
    And type to input text "30.10.2018 23:00" in plannedDateOffBy in filtr
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that planned date off between "01.10.2018 06:00" and "30.10.2018 23:00"


  Scenario: Проверка поиска отключений по фильтру.Поле Дата фактического включения
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click to field facted date off with
    And click to calendar
    And type to input text "04.10.2018 11:00" in factedDateOffWith in filtr
    And click empty in form filtr off
    And click to field facted date off by
    And click to calendar
    And type to input text "10.10.2018 23:00" in factedDateOffBy in filtr
    And click empty in form filtr off
    And click button with text "Применить" in filtrOff
    And check that facted date off between "04.10.2018 06:00" and "10.10.2018 23:00"

  Scenario: Проверка поиска отключений по неполному номеру отключения
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click button cancel
    And type to input with fieldSearch text: "317233"
    And click button enter
    And check that element with name "Результаты не найдены" is displayed


  Scenario: Проверка поиска отключений по номеру отключения
    And click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And click button cancel
    And type to input with fieldSearch text: "3172333"
    And click button enter
    And check that number off in grid is "3172333"


  Scenario: Проверка кнопки отменить в фильтре
    Given click button filtroff
    And click button with text "Сбросить фильтр" in filtrOff
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in filtrOff
    And click to first address in filtrAddressOff
    And click button with text "Отменить" in filtrOff
    And click button filtroff
    And check that text is empty in filtr "Адрес"


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"







































    