@consultation @rds
Feature: smoke test #2, Проверка формы Новая консультация на соответствие полей под РДС

  Scenario: authorization at RDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "рдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check form Consultation on display of field
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And check that element with name "Единый Диспетчерский Центр" is displayed in blockDispCentr
    And check that element with name "8 (495) 539-53-53" is displayed
    And check that element with name "Служба технической поддержки" is displayed
    And check that element with name "edc_support@mos.ru" is displayed
    And check that element with name "8 (495) 268-01-68" is displayed
    And check that element with name "Диспетчерский центр" is displayed
    And check that element with name "Диспетчер РДС" is displayed
    And check that element with name "Тестовый РДС Авто" is displayed
    And click rubric "Консультации"
    And check that element with name "Создать заявку" is not displayed
    And check that element with name "Номер консультации" is displayed in grid consultation
    And check that element with name "ОДС" is displayed in grid consultation
    And check that element with name "Дата составления" is displayed in grid consultation
    And check that element with name "Категория консультации" is displayed in grid consultation
    And check that element with name "Тип консультации" is displayed in grid consultation
    And check that element with name "Описание" is displayed in grid consultation
    And check that element with name "Адрес" is displayed in grid consultation
    And check that element with name "Комментарий к адресу" is not displayed in grid consultation
    And check that element with name "Контактное лицо" is displayed in grid consultation
    And check that element with name "Телефон основной" is displayed in grid consultation
    And scroll to column with name "Проблема решена"
    And check that element with name "Телефон дополнительный" is displayed in grid consultation
    And check that element with name "По заявке" is displayed in grid consultation
    And check that element with name "По отключению" is displayed in grid consultation
    And check that element with name "Проблемная ситуация" is displayed in grid consultation
    And check that element with name "Оказал консультацию" is displayed in grid consultation
    And check that element with name "Проблема решена" is displayed in grid consultation
    And check that element search of consultation is displayed
    And check that element find is displayed
    And check that element advanced filter is displayed
    And check that element export is displayed
    And check that element red pictogramm on grid is displayed in title of consultation

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"