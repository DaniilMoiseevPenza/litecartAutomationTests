@dispCentr
Feature: smoke test #1, Отображение заявок в рубриках роль ОДС

  Scenario: authorization at ODS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Display of request in rubrics
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And click rubric "Новые"
    And check that element table grid "Новая" is displayed
#    And click rubric "На доработку"
#    And check that element table grid "Новая" is displayed
    And click rubric "Ожидают обработки"
    And check that element table grid "Ожидает обработки" is displayed
    And click rubric "В работе"
    And check that element table grid "В работе" is displayed
    And click rubric "Закрыты"
    And check that element table grid "Закрыта" is displayed
    And click rubric "Отклонены"
    And check that element table grid "Отклонена" is displayed
    And click rubric "Отменены"
    And check that element table grid "Отменена" is displayed
    And click rubric "Активные"
    And check that element table grid not in "Закрыта","Отклонена","Отклонена" is displayed
    And click rubric "На контроле"
    And check that element table grid not in "Закрыта","Отклонена","Отменена" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"







