@consultations, @rds
Feature: smoke test, Просмотр карточки обычной консультации, роль РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: view Usual Consultation
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Консультации"
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And wait pagination disp centr
    And click field type of consultation
    And type to choose "Благодарность" category and "ЕДЦ" defect in filtr consultation
    And press button with text "Применить"
    And wait pagination disp centr
    And check that element any pictogramm is not displayed in first column
    And click first consultation
    And check that element next consultation is displayed
    And check that element prev consultation is displayed
    And check that element collapse consultation is displayed
    And check that element title of consultation is displayed
    And check that element any pictogramm is not displayed in title of consultation
    And check that number consultation is displayed
    And check that element with name "Номер консультации" is displayed in consultation
    And check that element with name "ОДС" is displayed in consultation
    And check that element with name "Дата составления" is displayed in consultation
    And check that element with name "Категория консультации" is displayed in consultation
    And check that element with name "Проблемная ситуация" is not displayed in consultation
    And check that element with name "Проблема решена" is not displayed in consultation
    And check that element with name "Закрыл проблемную ситуацию" is not displayed in consultation
    And check that element with name "Тип консультации" is displayed in consultation
    And check that element with name "Описание" is displayed in consultation
    And check that element with name "Адрес" is displayed in consultation
    And scroll to address
    And check that element with name "Подъезд" is displayed in consultation
    And check that element with name "Этаж" is displayed in consultation
    And check that element with name "Квартира" is displayed in consultation
    And check that element with name "Контактное лицо" is displayed in consultation
    And check that element with name "Телефон основной" is displayed in consultation
    And check that element with name "Телефон дополнительный" is displayed in consultation
    And check that element with name "По заявке" is displayed in consultation
    And check that element with name "По отключению" is displayed in consultation
    And check that element with name "Оказал консультацию" is displayed in consultation
    And check that element with name "АОН" is displayed in consultation
    And check that element with name "Идентификатор звонка" is displayed in consultation
    And check that element with name "Логин оператора" is displayed in consultation
    And scroll to by request
    And check that element with name "Оставить комментарий" is displayed in consultation
    And check that button with text "Добавить комментарий" is displayed in consultation
    And check that button with text "Добавить файл" is displayed in consultation
    And check that button with text "Проблема решена" is not displayed in consultation
    And click refresh
    And click rubric consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"