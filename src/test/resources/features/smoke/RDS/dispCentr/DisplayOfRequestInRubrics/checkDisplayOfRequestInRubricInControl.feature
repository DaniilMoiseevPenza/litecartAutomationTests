@dispCentr
Feature: smoke test, Отображение заявок в рубрике На контроле, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check display of request in rubric in control
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "На контроле"
    And check that element table grid not in "Закрыта","Отклонена","Отменена" is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"