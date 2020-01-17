@consultations, @rds
Feature: smoke test, Проверка фильтрации консультации, роль РДС (поле телефон)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Phone Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1111111111" in filtr "Телефон" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Телефон основной" is "+7 (111) 111-11-11"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"