@dispCentr
Feature: smoke test, Просмотр карточки заявки, по которой была создана проблемная нерешенная консультация, роль ОДС

  Scenario: authorization at ОDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "одс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Request, By Which Problem Resolved Consultation Was Created
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And check that element with name "Информация" is displayed
    And click "пометить как прочитанное" in notice
    And type to input with name searchOnNumberRequest text: "0100-0101-007035/18"
    And click button findRequest
    And check that number request in grid is "0100-0101-007035/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And check that element red pictogramm is displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
    And check that element red pictogramm is displayed in head of modal card consultation
    And click to close modal card of consultation
    And click button with "Скрыть консультации"
    And check that element red pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is not displayed in history table
    And check that element with name "Дата составления" is not displayed in history table
    And check that element with name "Тип консультации" is not displayed in history table
    And check that element with name "Описание" is not displayed in history table
    And click collapse and expand request

  Scenario: logout
    And click to open support
    And click exit
    And check that element with name "Информация" is displayed
    And click buttonNoticeOk
    And wait page autorization
    And check that page is "login"
