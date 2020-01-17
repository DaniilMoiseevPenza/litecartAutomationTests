@consultations, @rds
Feature: smoke test, поиск по номеру заявки после применения фильтра консультаций, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: search By Number Of Request After Filter Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4" in filtr "Адрес" in filtrConsultation
    And click first address with text "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And press button with text "Применить"
    And click first consultation
    And check that field "Адрес" is "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And click filter of consultation
    And type to input text "1100-0000-267140/18" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "По заявке" is "1100-0000-267140/18"
    And check that field "Адрес" is not "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"