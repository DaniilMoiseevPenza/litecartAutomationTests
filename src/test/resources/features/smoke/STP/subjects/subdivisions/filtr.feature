@subjects, @stp
Feature: smoke test #1, Проверка страницы Фильтр субъектов/подразделения

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=subdivision"
#    And click filter of subjects
    And check that element with name "Наименование организации" is displayed in filtr subdivizions
    And check that element with name "Наименование вышестоящего подразделения" is displayed in filtr subdivizions
    And check that element with name "Роль:" is displayed in filtr subdivizions
    And check that element with name "Вид деятельности" is displayed in filtr subdivizions
    And check that button with name "Применить" is displayed in filtr subjects
    And check that button with name "Скрыть" is displayed in filtr subjects
    And check that button with name "Сбросить фильтр" is displayed in filtr subjects
#   And click filter of subjects


   Scenario: check filter name of organization
#     And click filter of subjects
#   And click button with text "Сбросить фильтр" in filtr subject
    And click to fieldNameOfOrganization in filtr subdivizions
    And type to input text "Автоматизация ЕДЦ 2.0" in filtr "Наименование организации" in filtr organization
    And click to first name of organization in filtr subdivizions
    And click button with text "Применить" in filtr subjects
#    And click button with text "Скрыть" in filtr subjects
    And check that name of organization in grid subdivizions is "Автоматизация ЕДЦ 2.0"


  Scenario: check filter name of higher subdivisions
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldHigherSubdivisions in filtr subdivizions
    And type to input text "Автоматизация ОДС" in filtr "Наименование вышестоящего подразделения" in filtr organization
#    And click to first high subdivision in filtr subdivizions
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And check that high subdivision in grid subdivisions is "Автоматизация ОДС"

  Scenario: check filter role
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldRole in filtr subdivisions
    And type to input text "Диспетчерская" in filtrRoleSubdivisions
    And click to first role in filtrRoleSubdivisions
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And click to first organization in grid
    And check that role in card subdivisions is "Диспетчерская"


  Scenario: check filter kind of activity
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldKindOfActivity in filtr subjects
    And type to input text "Вентиляция Другое" in filtrKindOfActivitySubdivisions
    And click to first type of request in filtrTypeOfRequestSubdivisions
    And click button with text "Применить" in filtr subjects
    And click to first organization in grid
    And click button with text "Редактировать" in card of subjects
    And check that element with name "Редактирование бизнес ролей" is displayed in form update of business role
    And click to deffects
    And click to open comboBox category
    And check that element with name "Вентиляция Другое" is checked
    And click to close form update business role


 Scenario: search
    And type to input with fieldSearchSubjects text: "Автоматизация ЕДЦ 2.0"
    And click buttonFind
   And check that high subdivision in grid subdivisions is "Автоматизация ЕДЦ 2.0"



  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
