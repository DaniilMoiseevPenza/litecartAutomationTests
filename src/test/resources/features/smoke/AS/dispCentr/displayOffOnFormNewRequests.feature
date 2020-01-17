Feature: smoke test #1, Отображение отключений на форме создания заявки

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  ##проверка открытия формы создания заявки
  Scenario: check display previous requests
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And press button with text "Создать заявку"
    And check that page is "Новая заявка" in form newRequest

    ##проверка отображения отключений только по адресу
    And type to input "1-й Николощеповский переулок, дом 20/4" in field "Адрес" in form newRequest
    And click first address in formNewRequestAddress
    And check that element with name "Отключения по адресу:" is visible in block additional
    And check that element with name "Отключения подъезда:" is not visible in block additional
    And check that element with name "Отключения по квартире:" is not visible in block additional

     ##проверка отображения отключений по адресу и подъезду
    And type to input "1" in field "Подъезд" in form newRequest
    And check that element with name "Отключения по адресу:" is visible in block additional
#    And check that element with name "Отключения подъезда:" is visible in block additional
    And check that element with name "Отключения по квартире:" is not visible in block additional

    ##проверка отображения отключений по адресу, подъезду и квартире
    And type to input "1" in field "Квартира" in form newRequest
    And check that element with name "Отключения по адресу:" is visible in block additional
#    And check that element with name "Отключения подъезда:" is visible in block additional
#    And check that element with name "Отключения по квартире:" is visible in block additional

    ##проверка отображения отключений при удалении подъезда
    And clear entrance in newForm
    And click empty in form new request
#    And click delete ru.altarix.edc2.data in field with name "Подъезд"
    And check that element with name "Отключения по адресу:" is visible in block additional
    And check that element with name "Отключения подъезда:" is not visible in block additional
#    And check that element with name "Отключения по квартире:" is visible in block additional

     ##проверка отображения отключений при удалении подъезда и квартиры
    And clear appartment in newForm
    And click empty in form new request
#   And click delete ru.altarix.edc2.data in field with name "Квартира"
    And check that element with name "Отключения по адресу:" is visible in block additional
    And check that element with name "Отключения подъезда:" is not visible in block additional
    And check that element with name "Отключения по квартире:" is not visible in block additional

    ##проверка открытия модального окна по гиперссылке отключения
    And click to open modal window off
    And check that element with name "Просмотр отключения № " is visible in modalWindowOff
    And click to close modal card off
    And click to close form new request

  Scenario: close card of request
    And click close card of request

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"
