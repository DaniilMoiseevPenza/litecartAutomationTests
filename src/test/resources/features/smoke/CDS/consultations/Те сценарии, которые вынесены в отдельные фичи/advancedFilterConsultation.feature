@consultations, @cds
Feature: smoke test #1, Проверка фильтрации консультации ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"


  Scenario: check form Filter Consultation on display of field
    And check that title page is "Единый Диспетчерский Центр"
    And click rubric "Консультации"
    And click filter of consultation
    And check that element with name "Район:" is displayed
    And check that element with name "Дата создания:" is displayed
    And check that element with name "Адрес:" is displayed
    And check that element with name "Квартира:" is displayed
    And check that element with name "Телефон:" is displayed
    And check that element with name "Контактное лицо:" is displayed
    And check that element with name "Проблемная ситуация:" is displayed
    And check that element with name "Проблема решена:" is displayed
    And check that element with name "Да" is displayed
    And check that element with name "Нет" is displayed
    And check that element with name "Все" is displayed
    And click checkbox yes in filtr
    And check that element with name "Закрыл проблемную ситуацию:" is displayed
    And check that element with name "Тип консультации" is displayed
#    And check that element with name "Оказал консультацию:" is displayed // временно убрали
    And check that element with name "Номер заявки:" is displayed
    And check that element with name "Аварийная заявка" is displayed
    And check that element with name "Применить" is displayed
    And check that element with name "Сбросить фильтр" is displayed
    And check that element with name "Скрыть" is displayed

  Scenario: check button Hide filter
    And press button with text "Скрыть"
    And check that form filter of consultation is not displayed
    And click filter of consultation
    And check that form filter of consultation is displayed


  Scenario: check filter apartment
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1" in filtr "Квартира" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Квартира" is "1"
    And click collapse consultation

  Scenario: check filter phone
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1111111111" in filtr "Телефон" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Телефон основной" is "+7 (111) 111-11-11"
    And click collapse consultation

  Scenario: check filter region
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click to field "Район" in filtr consultation
    ##And type to input text "муниципальный округ Арбат" in filtrDistrictConsultation
    And click text "муниципальный округ Арбат"
   # And click first district in fieldDistrict
  #    And click empty in form filtr of consultation
    And press button with text "Применить"
  #   And check that ods in grid is "ОДС1"
    And check that region in grid is "НАО"
    And check that district in grid is "Кокошкино"



  Scenario: check filter address
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in filtrConsultation
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And press button with text "Применить"
    And click first consultation
    And check that field "Адрес" is "1-й Николощеповский переулок, дом 20/4"
    And click collapse consultation


  Scenario: check filter fio
     And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "алла" in filtr "Контактное лицо" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Контактное лицо" is "алла"
    And click collapse consultation


  Scenario: check filter type of consultation
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

  Scenario: check filter problem situation, checkbox yes
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And check that checkbox "Да" is displayed and "Нет" is selected
    And check that checkbox "Нет" is displayed and "Нет" is selected
    And check that checkbox "Все" is displayed and "Нет" is selected
    And click checkbox yes in filtr
    And press button with text "Применить"
    And click first consultation
    And check that checkbox "Проблемная ситуация" is disabled and is selected in cardOfConsultation
    And check that checkbox "Проблема решена" is disabled and is selected in cardOfConsultation
    And click collapse consultation


  Scenario: check filter close problem situation
     And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox yes in filtr
    And click to field "Закрыл проблемную ситуацию" in filtr consultation
    And type to input text "Оператор КЦ" in filtr "Закрыл проблемную ситуацию" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "Зыкрыл проблемную ситуацию" is "Оператор КЦ"
    And click collapse consultation


  Scenario: check filter problem situation, checkbox no
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And press button with text "Применить"
    And click first consultation
     And check that checkbox "Проблемная ситуация" is disabled and is selected in cardOfConsultation
   And check that checkbox "Проблема решена" is disabled and is not selected in cardOfConsultation
    And click collapse consultation

  # временно убрали поле

#  Scenario: check filtr provided consultation
#    And click filter of consultation
#    And press button with text "Сбросить фильтр"
#    And click field provided consultation
#    And type to input text "Оператор КЦ" in filtr "Оказал консультацию" in filtrConsultation
#    And click empty in form filtr of consultation
#    And press button with text "Применить"
#    And click first consultation
#    And check that field "Оказал консультацию" is "Оператор КЦ"
#    And click collapse consultation

  Scenario: check filtr number of request
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1100-0000-267140/18" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And check that field "По заявке" is "1100-0000-267140/18"
    And click collapse consultation

  Scenario: check filtr number of request, if number of request is not full
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "1100-0000-267140" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And check that not ru.altarix.edc2.data in gridConsultation

  Scenario: check filtr emergency request
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click checkbox emergency request
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by request
    And check that field "Приоритет" is "Аварийная" in cardRequest

  Scenario: close card of request
    And click close card of request



  Scenario: check filtr number of request after filtr
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

  Scenario: check filtr number of consultation after filtr
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

