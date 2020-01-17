@consultations, @rds
Feature: smoke test, Проверка фильтрации консультации, роль РДС (поле тип консультации)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Type Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click to field "Тип консультации" in filtr consultation
    And click text "Вопросы по ЕДЦ"
    #And type to input text "ЕДЦ" in filtr "Тип консультации" in filtrConsultation
   # And click first type of consultation with text "ЕДЦ"
    And press button with text "Применить"
    And click first consultation
    And check that field "Тип консультации" is "ЕДЦ"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"