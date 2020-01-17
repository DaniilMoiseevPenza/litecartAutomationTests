@off, @rds
Feature: smoke test #1, Проверка страницы Новое отключение и пушей о незаполнении обязательных полей

  Scenario: Авторизация под RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

 ##проверка формы новое отключение и пушей о незаполнении каждого обязательного поля
  Scenario: checking of form new off
    And check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And open start page "disablings"
    And click button createNewOff
    And check that element with name "Новое отключение" is displayed
    And check that element with name "Вид отключения: *" is displayed
    And check that element with name "Тип отключения: *" is displayed
    And check that element with name "Дома для отключения: *" is displayed
    And check that element with name "Дата отключения:*" is displayed
    And check that element with name "Планируемая дата включения: *" is displayed
    And check that element with name "Ведёт работы:" is displayed
    And check that element with name "Описание отключения ход работ:" is displayed
    And check that saveButton is displayed
    And check that element with name "Создать отключение на основе данного" is displayed
    And click saveButton
    And check pop-up message at field off is displayed
    And click button with text "Плановое отключение" in form create off
    And click saveButton
    And check pop-up message at field off number two is displayed
    And click field typeOff
   And type to input text "Замена оборудования в котельной" in typeOffOnFormNewOff
    And click to type off with name "Замена оборудования в котельной" in form create off
    And check pop-up message at field off number three is displayed
    And click saveButton
    And click button with text "Выбрать" in form create off
    And check that element with name "Дома для отключения" is displayed
    And type to input text "1-й Николощеповский переулок, дом 20/4" in blockHousesForOffAddressOff
    And click first address with text "1-й Николощеповский переулок, дом 20/4"
    And click button with text "+ Добавить" in blockHousesForOffAddressOff
    And click button with text "1-й Николощеповский переулок, дом 20/4" in blockHousesForOffAddressOff
    And check that header is "1-й Николощеповский переулок, дом 20/4" is displayed
    And check that element with name "Указать" is displayed
    And check that element with name "Подъезды" is displayed
    And check that element with name "Квартиры" is displayed
    And check that element with name "Принять" is displayed
    And click button close formAddAppartment
    And click button accept
    And click saveButton
    And check pop-up message at field off number four is displayed
    And click to field with name "Дата отключения" in form create off
    And type to input text "10.10.2018 10:00" in dateOff
    And click emptyInFormNewOff
    And click saveButton
    And check pop-up message at field off number five is displayed
    And click button cancelNewOff


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"







