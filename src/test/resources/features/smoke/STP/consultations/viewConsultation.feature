@consultation @stp
Feature: smoke test #1, Просмотр карточки консультации под СТП

  Scenario: authorization at STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check card of problem consultation with grey pictogramm on all fields
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric consultation
    And click first consultation
    And check that element prev consultation is disabled
    And click next consultation
    And check that element prev consultation is enabled
    And click collapse consultation
    And click filter of consultation
    And click checkbox yes in filtr
    And press button with text "Применить"
    And check that element grey pictogramm is displayed in first column
    And click first consultation
    And check that element next consultation is displayed
    And check that element prev consultation is displayed
    And check that element collapse consultation is displayed
    And check that element title of consultation is displayed
    And check that element grey pictogramm is displayed in title of consultation
    And check that number consultation is displayed
    And check that element with name "Номер консультации" is displayed in consultation
    And check that element with name "ОДС" is displayed in consultation
    And check that element with name "Дата составления" is displayed in consultation
    And check that element with name "Категория консультации" is displayed in consultation
    And check that element with name "Проблемная ситуация" is displayed in consultation
    And check that element with name "Проблема решена" is displayed in consultation
    And check that element with name "Закрыл проблемную ситуацию" is displayed in consultation
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

  Scenario: check card of usually consultation on all fields
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

  Scenario: check card of problem consultation with red pictogramm on all fields
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And press button with text "Применить"
    And check that element red pictogramm is displayed in first column
    And click first consultation
    And check that element next consultation is displayed
    And check that element prev consultation is displayed
    And check that element collapse consultation is displayed
    And check that element title of consultation is displayed
    And check that element red pictogramm is displayed in title of consultation
    And check that number consultation is displayed
    And check that element with name "Номер консультации" is displayed in consultation
    And check that element with name "ОДС" is displayed in consultation
    And check that element with name "Дата составления" is displayed in consultation
    And check that element with name "Категория консультации" is displayed in consultation
    And check that element with name "Проблемная ситуация" is displayed in consultation
    And check that element with name "Проблема решена" is displayed in consultation
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
    And check that button with text "Проблема решена" is displayed in consultation
    And click refresh
    And click rubric consultation

  Scenario: check card of consultation by request
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And type to input text "0200-0202-002531/18" in filtr "Номер заявки" in filtrConsultation
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by request
    And check to open modal window card of request
    And click to close modal window of request
    And click refresh
    And click rubric consultation

  Scenario: check card of consultation by off
    And click filter of consultation
    And press button with text "Сбросить фильтр"
    And click checkbox of problem consultation in filtr
    And click field type of consultation
    And type to choose "Консультация по заявке" category and "Аварийные/плановые работы" defect in filtr consultation
    And press button with text "Применить"
    And click first consultation
    And scroll to address
    And click on hyperlink by off
    And check to open modal window card off
    And click to close modal window off

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"