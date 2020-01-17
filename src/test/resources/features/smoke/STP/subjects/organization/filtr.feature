@subjects, @stp
Feature: smoke test #1, Проверка страницы Фильтр субъектов/организации

  Scenario: Авторизация
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: Проверка наличия полей в фильтре
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "subjects?dict=legal"
#    And click filter of subjects
    And check that element with name "ИНН" is displayed in filtr organization
    And check that element with name "Роль" is displayed in filtr organization
    And check that element with name "Вид деятельности" is displayed in filtr organization
    And check that button with name "Применить" is displayed in filtr subjects
    And check that button with name "Скрыть" is displayed in filtr subjects
    And check that button with name "Сбросить фильтр" is displayed in filtr subjects
#   And click filter of subjects


  Scenario: check filter inn
#   And click filter of subjects
    And click to fieldInn in filtr organization
    And type to input text "232323211234" in filtr "ИНН" in filtr organization
    And click button with text "Применить" in filtr subjects
    And check that inn grid organization is "232323211234"


#  Scenario: check filter role
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldRole in filtr organization
    And type to input text "Управляющая компания (УК)" in filtrRoleOrganization
    And click to first role in filtrRoleOrganization
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And check that role in grid organization is "Управляющая компания (УК)"


#  Scenario: check filter kind of activity
    And click filter of subjects
    And click button with text "Сбросить фильтр" in filtr subjects
    And click to fieldKindOfActivity in filtr organization
    And type to input text "Благоустройство Другое" in filtrKindOfActivity
    And click to first type of request in filtrTypeOfRequestOrganization
    And click button with text "Применить" in filtr subjects
    And click button with text "Скрыть" in filtr subjects
    And click to first organization in grid
    And click button with text "Редактировать" in card of subjects
    And check that element with name "Редактирование бизнес ролей" is displayed in form update of business role
    And click to deffects
    And click to open comboBox category
    And check that element with name "Благоустройство Другое" is checked
    And click to close form update business role


  Scenario: search
    And type to input with fieldSearchSubjects text: "Автоматизация ЕДЦ 2.0"
    And click buttonFind
    And click to first organization in grid
    And check that field full name in card of organization is "Автоматизация ЕДЦ 2.0"



  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
