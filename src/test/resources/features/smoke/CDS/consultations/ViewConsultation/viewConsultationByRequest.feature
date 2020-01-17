@consultations, @cds
Feature: smoke test, Просмотр карточки консультации по заявке, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Consultation By Request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1100-0000-267140/18" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by request
    And check to open modal window card of request
    And click to close modal window of request
    And click refresh
    And click rubric consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"