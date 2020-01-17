@subjects, @stp
Feature: smoke test #1, Проверка страницы Фильтр субъектов/сотрудники

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=person"
#    And click filter of subjects
    And check that element with name "ИНН:" is displayed in filtr employees
    And check that element with name "Наименование организации:" is displayed in filtr employees
    And check that element with name "Наименование подразделения:" is displayed in filtr employees
    And check that element with name "Должность:" is displayed in filtr employees
    And check that element with name "Зарегистрирован в мобильном приложении:" is displayed in filtr employees
    And check that button with name "Применить" is displayed in filtr subjects
    And check that button with name "Скрыть" is displayed in filtr subjects
    And check that button with name "Сбросить фильтр" is displayed in filtr subjects
#   And click filter of subjects



  Scenario: check filter name of organization
 #     And click filter of subjects
 #   And click button with text "Сбросить фильтр" in filtr subject
    And click to fieldNameOfOrganization in filtr employees
    And type to input text "Автоматизация ЕДЦ 2.0" in filtr "Наименование организации:" in filtr employees
    And click to first name of organization in filtr employees
    And click button with text "Применить" in filtr subjects
 #    And click button with text "Скрыть" in filtr subjects
    And check that name of organization in grid employees is "Автоматизация ЕДЦ 2.0"



  Scenario: check filter name of subdivision
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldSubdivision in filtr employees
    And type to input text "Автоматизация ОДС" in filtr "Наименование подразделения:" in filtr employees
    And click to first subdivision in filtr employees
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And check that subdivision in grid employees is "Автоматизация ОДС"



  Scenario: check filter position
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldPosition in filtr employees
    And type to input text "Диспетчер ОДС" in filtr "Должность:" in filtr employees
    And click to first position with text "Диспетчер ОДС" in filtr employees
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And check that position in grid employees is "Диспетчер ОДС"


  Scenario: check filter registration in mobile application
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to field Registration in filtr employees
    And type to input text "ЦАО" in fieldRegistration
    And click to first registration in filtr employees
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And click to first organization in grid
    And check that outside system in card of employees is "ЦАО"


  Scenario: search
    And type to input with fieldSearchSubjects text: "Иванов Иван"
    And click buttonFind
    And click to first organization in grid
    And check that fio in grid of employees is "Иванов Иван"



  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
