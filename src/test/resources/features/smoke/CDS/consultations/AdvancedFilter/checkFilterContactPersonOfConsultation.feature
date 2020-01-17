@consultations, @cds
Feature: smoke test, Проверка фильтрации консультации, роль ЦДС (поле контактное лицо)

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Contact Person Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "алла" in filtr "Контактное лицо" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Контактное лицо" is "алла"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"