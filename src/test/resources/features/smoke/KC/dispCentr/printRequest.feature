@dispCentr
Feature: smoke test #1, Проверка формы печать карточки заявки роль КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check form print new request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Новая"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request


  Scenario: check form print close request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Решена"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request



  Scenario: check form print reject request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Отклонена"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request


  Scenario: check form print cancell request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Отменена"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request


  Scenario: check form print in work request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "В работе"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request


  Scenario: check form print execution request
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "Ожидает обработки"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And press button with text "Применить"
    And click on first request
    And check that button with text "Печать" is not visible in request




  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"




