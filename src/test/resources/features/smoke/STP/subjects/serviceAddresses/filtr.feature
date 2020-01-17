@subjects, @stp
Feature: smoke test #1, Проверка страницы Фильтр субъектов/адреса обслуживания

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=address"
#    And click filter of subjects
    And check that element with name "Округ:" is displayed in filtr serviceAddresses
    And check that element with name "Роль:" is displayed in filtr serviceAddresses
    And check that element with name "Район:" is displayed in filtr serviceAddresses
    And check that element with name "Наименование организации:" is displayed in filtr serviceAddresses
    And check that button with name "Применить" is displayed in filtr subjects
    And check that button with name "Скрыть" is displayed in filtr subjects
    And check that button with name "Сбросить фильтр" is displayed in filtr subjects
#   And click filter of subjects


  Scenario: check filter region
#   And click filter of subjects
    And click to fieldRegion in filtrServiseAddresses
    And type to input "Новомосковский административный округ" in filtr "Округ:" in filtrServiceAddresses
    And click first okrug with text "Новомосковский административный округ"
    And click button with text "Применить" in filtr subjects
    And click to first organization in grid
    And check that region in card of address is "Новомосковский административный округ"


  Scenario: check filter district
    And click filter of subjects
    And click to fieldDistrict in filtrServiseAddresses
    And type to input "поселение Кокошкино" in fieldDistrictInServiceAddresses
    And click first district with text "поселение Кокошкино"
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And click to first organization in grid
    And check that district in card of address is "поселение Кокошкино"

  Scenario: check filter name of organization
    And click filter of subjects
    And click button with text "Сбросить" in filtr subjects
    And click to fieldNameOfOrganization in filtrServiseAddresses
    And type to input "Автоматизация ЕДЦ 2.0" in fieldNameOfOrganizationInServiceAddresses
    And click first organization with text "Автоматизация ЕДЦ 2.0"
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And check that organization in grid addresses is "Автоматизация ЕДЦ 2.0"


#  Scenario: check filter role
#    And click filter of subjects
#    And click to fieldRole in filtrServiseAddresses
#    And type to input "Диспетчерская" in fieldRoleInServiceAddresses
#    And click first role with text "Диспетчерская"
#    And click button with text "Применить" in filtr subjects
#    And click button with text "Скрыть" in filtr subjects
  

#  Scenario: search
#    And type to input with fieldSearchSubjects text: "поселение Кокошкино, дачный посёлок Кокошкино, 2-й Набережный тупик, дом 1"
#    And click to address from AK
#    And click buttonFind
#    And click to first organization in grid
#    And check that field address in card of addrress is "поселение Кокошкино, дачный посёлок Кокошкино, 2-й Набережный тупик, дом 1"
#    And check that address in grid addressee is "поселение Кокошкино, дачный посёлок Кокошкино, 2-й Набережный тупик, дом 1"



  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
