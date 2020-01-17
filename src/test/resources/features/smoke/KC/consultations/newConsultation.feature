@consultation @callcentr
Feature: smoke test #2, Проверка формы Новая консультация на соответствие полей под КЦ

  Scenario: authorization at KC
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "кц"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check form New Consultation on display of field
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest
    And check that element request is selected
    And check that element consultation is displayed
    And click checkbox consultation
    And check that page is "Новая консультация" in form newRequest
    And check that element with name "Тип консультации: *" is displayed
    And check that element consultationType is displayed
    And check that element with name "Описание:" is displayed in form new consultation
    And check that element descriptionConsultation is displayed
    And check that element with name "Адрес: " is displayed in form new consultation
    And check that element adressConsultation is displayed
    And check that element with name "Подъезд:" is displayed in form new consultation
    And check that element entranceConsultation is displayed
    And check that element with name "Этаж:" is displayed in form new consultation
    And check that element floorConsultation is displayed
    And check that element with name "Квартира:" is displayed in form new consultation
    And check that element apartmentConsultation is displayed
    And check that element with name "Основной:" is displayed in form new consultation
    And check that element mainPhoneConsultation is displayed
    And check that element with name "Дополнительный телефон:" is displayed in form new consultation
    And check that element additionalPhoneConsultation is displayed
    And check that element with name "Контактное лицо:" is displayed in form new consultation
    And check that element contactPersonConsultation is displayed
    And check that element save consultation is displayed
    And check that element warning new consultation is displayed
    And click to close form new consultation


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
