@dispCentr
Feature: smoke test #1, Отображение отключений на форме создания заявки роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  ##проверка открытия формы создания заявки
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

    ##проверка отображения отключений только по адресу
  Scenario: check off in form new request adress
    And type to input "1-й Николощеповский переулок, дом 20/" in field "Адрес" in form newRequest
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Замена оборудования в котельной" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Неисправность на сетях ГВС" is visible in block additional
    And check that element with name "Горячее водоснабжение (ГВС) / Замена оборудования в котельной" is visible in block additional
    And check that element with name "Отключения подъезда" is not visible in block additional
    And check that element with name "Отключения по квартире" is not visible in block additional

     ##проверка отображения отключений по адресу и подъезду
  Scenario: check off in form new request enterance
    And type to input "1" in field "Подъезд" in form newRequest
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is visible in block additional
    And check that element with name "Отключения по квартире" is not visible in block additional

    ##проверка отображения отключений по адресу, подъезду и квартире
  Scenario: check off in form new request enterence and flat
    And type to input "1" in field "Квартира" in form newRequest
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is visible in block additional
    And check that element with name "Отключения по квартире" is visible in block additional

    ##проверка отображения отключений при удалении подъезда
  Scenario: check off in form new request delete enterence
    And click delete data in field with name "Подъезд"
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is not visible in block additional
    And check that element with name "Отключения по квартире" is visible in block additional

     ##проверка отображения отключений при удалении подъезда и квартиры
  Scenario: check off in form new request delete enterence and flat
    And click delete data in field with name "Квартира"
    And check that element with name "Отключения по адресу" is visible in block additional
    And check that element with name "Отключения по подъезду" is not visible in block additional
    And check that element with name "Отключения по квартире" is not visible in block additional

    ##проверка открытия модального окна по гиперссылке отключения
  Scenario: check modal form off
    And click to open modal window off
    And check that element with name "Замена оборудования в ЦТП" is visible in modalWindowOff
    And check that element with name "1-й Николощеповский переулок, дом 20/4" is visible in modalWindowOff

  Scenario: close modal card off
    And click to close modal card off
  Scenario: close form new request
    And click to close form new request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
