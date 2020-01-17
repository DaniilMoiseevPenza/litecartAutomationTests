@consultations, @cds
Feature: smoke test, Поиск по номеру консультации после применения фильтра, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Filter Address Of Consultation
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4" in filtr "Адрес" in filtrConsultation
    And click first address with text "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And type to input text "1100-0000-267140/18" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "По заявке" is "1100-0000-267140/18"
    And check that field "Адрес" is not "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And click collapse consultation
    And type to input with name searchOnNumberConsultation text: "К1100-0000-054170/18"
    And click button findRequest
    And check that number request in grid is "К1100-0000-054170/18"
    And click first consultation
    And check that field "По заявке" is not "1100-0000-267140/18"
    And check that field "Адрес" is not "муниципальный округ Арбат, 2-й Дорожный проезд, дом 4"
    And click collapse consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"