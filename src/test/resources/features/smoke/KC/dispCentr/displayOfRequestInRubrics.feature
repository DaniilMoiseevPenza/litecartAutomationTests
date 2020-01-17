@dispCentr
Feature: smoke test #1, Отображение заявок в рубриках роль КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Display of request in rubrics
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Новые"
    And check that element table grid "Новая" is displayed
    And click rubric "Прозвонить отклоненные"
    And check that element table grid "Отклонена" is displayed

    Given click choose colums
    And click button deselectAll
    And click choose column "Причина отклонения"
    And click choose colums apply
    And check that column "Причина отклонения" is not "Аварийное/плановое отключение" and "Множественное обращение по данной проблеме/дефекту" and "Повторное обращение жителя по данной проблеме/дефекту"



  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"






