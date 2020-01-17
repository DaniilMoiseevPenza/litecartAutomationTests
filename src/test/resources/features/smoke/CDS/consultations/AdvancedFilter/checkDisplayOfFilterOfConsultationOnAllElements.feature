@consultations, @cds
Feature: smoke test, Проверка отображения всех элементов в фильтре консультаций, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Display Of Filter Of Consultation On Al lElements
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

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"