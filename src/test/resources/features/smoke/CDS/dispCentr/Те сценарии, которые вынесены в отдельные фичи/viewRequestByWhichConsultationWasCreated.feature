@dispCentr
Feature: smoke test #1, Просмотр модальной формы консультации из карточки заявки роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"


    ##просмотр карточки заявки, по которой была создана обычная консультация
  Scenario: view Request, By Which usual Consultation Was Created
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And type to input with name searchOnNumberRequest text: "0100-0101-006873/18"
    And click button findRequest
    And check that number request in grid is "0100-0101-006873/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And check that element grey pictogramm is not displayed in column number of consultation
   And check that element red pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
    And check that element grey pictogramm is not displayed in head of modal card consultation
    And check that element red pictogramm is not displayed in head of modal card consultation
    And click to close modal card of consultation
    And click button with "Скрыть консультации"
    And check that element with name "Номер консультации" is not displayed in history table
    And check that element with name "Дата составления" is not displayed in history table
    And check that element with name "Тип консультации" is not displayed in history table
    And check that element with name "Описание" is not displayed in history table
    And click collapse and expand request


   ##просмотр карточки заявки, по которой была создана проблемная решенная консультация
  Scenario: view Request, By Which problem resolved Consultation Was Created
    And clear fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006871/18"
    And click button findRequest
    And check that number request in grid is "0100-0101-006871/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    And check that element grey pictogramm is displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
    And check that element grey pictogramm is displayed in head of modal card consultation
    And click to close modal card of consultation
    And click button with "Скрыть консультации"
    And check that element grey pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is not displayed in history table
    And check that element with name "Дата составления" is not displayed in history table
    And check that element with name "Тип консультации" is not displayed in history table
    And check that element with name "Описание" is not displayed in history table
    And click collapse and expand request

    ##просмотр карточки заявки, по которой была создана проблемная нерешенная консультация
  Scenario: view Request, By Which problem not resolved Consultation Was Created
    And clear fieldSearchOnNumberRequest in startPage
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


      ##просмотр карточки заявки, по которой не была создана консультация
  Scenario: view Request, By Which Consultation Was not Created
    And clear fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "0100-0101-006867/18"
    And click button findRequest
    And check that number request in grid is "0100-0101-006867/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is not displayed in history table

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"



