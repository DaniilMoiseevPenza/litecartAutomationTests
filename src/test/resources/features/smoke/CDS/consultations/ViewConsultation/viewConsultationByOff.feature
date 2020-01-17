@consultations, @cds
Feature: smoke test, Просмотр карточки консультации по отключению, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Consultation By Off
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click field type of consultation
    And type to input text "Аварийные/плановые работы" in filtrTypeConsultation
    And click on first type of consultation
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by off
    And check to open modal window card off
    And check that element with name "Создать консультацию" is not displayed in modalWindowOff
    And click to close modal window off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"