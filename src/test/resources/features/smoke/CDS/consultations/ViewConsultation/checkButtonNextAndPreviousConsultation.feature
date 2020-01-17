@consultations, @cds
Feature: smoke test, Проверка кнопок следующая и предыдущая консультация, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Button Next And Previous Consultation
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Консультации"
    And click first consultation
    And check that element prev consultation is disabled
    And check that element next consultation is enabled
    And click next consultation
    And check that element prev consultation is enabled

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"