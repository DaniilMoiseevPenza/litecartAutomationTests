Feature: smoke test #1, Просмотр карточки заявки

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

#нет такой
    ##просмотр карточки заявки, по которой была создана обычная консультация
  Scenario: view Request, By Which usual Consultation Was Created
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And type to input with name searchOnNumberRequest text: "1100-0000-246048/18"
    And click button findRequest
    And check that number request in grid is "1100-0000-246048/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
    #    And check that element grey pictogramm is not displayed in column number of consultation
#    And check that element red pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
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
    And type to input with name searchOnNumberRequest text: "0500-0000-047433/18"
    And click button findRequest
    And check that number request in grid is "0500-0000-047433/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
#    And check that element grey pictogramm is displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
    And click to close modal card of consultation
    And click button with "Скрыть консультации"
#    And check that element grey pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is not displayed in history table
    And check that element with name "Дата составления" is not displayed in history table
    And check that element with name "Тип консультации" is not displayed in history table
    And check that element with name "Описание" is not displayed in history table
    And click collapse and expand request

    ##просмотр карточки заявки, по которой была создана проблемная нерешенная консультация
  Scenario: view Request, By Which problem not resolved Consultation Was Created
    And clear fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "1100-0000-246047/18"
    And click button findRequest
    And check that number request in grid is "1100-0000-246047/18"
    And click on first request
    And scroll to addFile
    And check that element with name "Показать консультации" is displayed in request
    And click button with "Показать консультации"
#    And check that element red pictogramm is displayed in column number of consultation
    And check that element with name "Номер консультации" is displayed in history table
    And check that element with name "Дата составления" is displayed in history table
    And check that element with name "Тип консультации" is displayed in history table
    And check that element with name "Описание" is displayed in history table
    And click on hyperlink by consultation
    And check that element with name "Просмотр консультации № " is displayed in modal form consultation
    And click to close modal card of consultation
    And click button with "Скрыть консультации"
#    And check that element red pictogramm is not displayed in column number of consultation
    And check that element with name "Номер консультации" is not displayed in history table
    And check that element with name "Дата составления" is not displayed in history table
    And check that element with name "Тип консультации" is not displayed in history table
    And check that element with name "Описание" is not displayed in history table
    And click collapse and expand request


      ##просмотр карточки заявки, по которой не была создана консультация
  Scenario: view Request, By Which Consultation Was not Created
    And clear fieldSearchOnNumberRequest in startPage
    And type to input with name searchOnNumberRequest text: "1100-0000-246033/18"
    And click button findRequest
    And check that number request in grid is "1100-0000-246033/18"
    And click on first request
    And scroll to addFile
#    And check that element with name "Показать консультации" is not displayed in history table

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"



