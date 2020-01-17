@dispCentr
Feature: smoke test, Проверка формы печать карточки заявки роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check pop menu print request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click on first request
    And click button with text "Печать" in form request card
    And click button with name "Печать" in form print request card
    And check pop-up message at print of request is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"