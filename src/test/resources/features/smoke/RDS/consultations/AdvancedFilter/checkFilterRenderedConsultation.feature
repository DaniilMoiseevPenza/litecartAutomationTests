@consultations, @rds
Feature: smoke test, Проверка фильтрации консультации, роль РДС (поле оказал консультацию)

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

    #временно убрали поле

  Scenario: check Filter Rendered Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    #And click field provided consultation
#    And type to input text "Оператор КЦ" in filtr "Оказал консультацию" in filtrConsultation
#    And click empty in form filtr of consultation
#    And press button with text "Применить"
#    And click first consultation
#    And check that field "Оказал консультацию" is "Оператор КЦ"
#    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"