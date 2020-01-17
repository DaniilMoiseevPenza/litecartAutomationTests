Feature: smoke test #1, Проверка фильтрации заявок

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr adress
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "по" in filtr "Адрес" in dispCentr
    And check that first adress in filtr adress is not visible
    And type to input "1-й Николощеповский переулок, дом 20/4" in filtr "Адрес" in dispCentr
    And click first address in filtrAddress
    And type to input "1" in filtr "Подъезд" in dispCentr
    And type to input "1" in filtr "Этаж" in dispCentr
    And type to input "1" in filtr "Квартира" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Адрес дома"
    And click choose column "Квартира"
    And click choose column "Этаж"
    And click choose column "Подъезд"
    And click choose colums apply
    And check that addresses in grid is "1-й Николощеповский переулок, дом 20/4"
    And check that flats in grid is "1"
    And check that floors in grid is "1"
    And check that enterances in grid is "1"


  Scenario: check filtr №ODS
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "ОДС автоматизация ЕДЦ 2.0" in filtr "№ ОДС" in dispCentr
    And click first ods with text "ОДС автоматизация ЕДЦ 2.0"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "ОДС"
    And check that column "ОДС" is "ОДС автоматизация ЕДЦ 2.0"


  Scenario: check filtr date of create
    And click filter
    And press button with text "Сбросить фильтр"
    And click to field date create with
    And type to input text "01.12.2018 10:00" in "Дата создания" "с" in filtr
    And click empty in form filtr of request
    And click to field date create by
    And type to input text "23.12.2018 10:00" in "Дата создания" "по" in filtr
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date create of request in grid between "01.12.2018 10:00" and "23.12.2018 10:00"


  Scenario: check filtr date of close
    Given click filter
    And press button with text "Сбросить фильтр"
    And click to field date close with
    And type to input text "20.08.2018 06:00" in "Дата закрытия:" "с" in filtr
    And click empty in form filtr of request
    And click to field date close by
    And type to input text "23.08.2018 23:00" in "Дата закрытия:" "по" in filtr
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button custom
    And click choose colums apply
    And check that date close of request in card between "20.08.2018 06:00" and "23.08.2018 23:00"





  Scenario: check filtr main phone
    Given click filter
    And press button with text "Сбросить фильтр"
    And type to input "1111111111" in filtr "Телефон" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Телефон основной"
    And click choose column "Телефон дополнительный"
    And click choose colums apply
    And check that column "Телефон основной" is "+7 (111) 111-11-11"

  Scenario: check filtr fio
    Given click filter
    And press button with text "Сбросить фильтр"
    And type to input "тест" in filtr "Контактное лицо" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Контактное лицо"
    And click choose colums apply
    And check that column "Контактное лицо" is "Тест"

  Scenario: check filtr type of request
    Given click filter
    And press button with text "Сбросить фильтр"
    And type to input "Вентиляция Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Тип дефекта"
    And click choose colums apply
    And check that column "Тип дефекта" is "Вентиляция Другое"

  Scenario: check filtr type of payable
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Платная"
    And click choose colums apply
    And check that column "Платная" is "Бесплатная"


  Scenario: check filtr time of deadline
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "В течение суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date closed from "В течение суток"
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 1 до 7 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And check that date closed from "От 1 до 7 суток"
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 8 до 15 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And check that date closed from "От 8 до 15 суток"
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "Более 15 суток"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date closed from "Более 15 суток"


  Scenario: check filtr priority
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Приоритет" in dispCentr
    And click filtr "Обычная"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Приоритет"
    And click choose colums apply
    And check that column "Приоритет" is "Обычная"

  Scenario: check filtr request status
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус" in dispCentr
    And click filtr "В работе"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Статус"
    And click choose colums apply
    And check that column "Статус" is "В работе"

  Scenario: check filtr request cancell reason
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Причина отмены" in dispCentr
    And click filtr "Время не согласовано заявителем"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Причина отмены"
    And click choose colums apply
    And check that column "Причина отмены" is "Время не согласовано заявителем"

  Scenario: check filtr reject reason
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Причина отклонения" in dispCentr
    And click filtr "Аварийное/плановое отключение"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Причина отклонения"
    And click choose colums apply
    And check that column "Причина отклонения" is "Аварийное/плановое отключение"

  Scenario: check filtr payable status
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус оплаты" in dispCentr
    And click filtr "не оплачено"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Статус оплаты"
    And click choose colums apply
    And check that column "Статус оплаты" is "Не оплачено"

  Scenario: check filtr agreed cost
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And type to input "10" in filtr "Cогласованная стоимость от" in dispCentr
    And type to input "100" in filtr "до" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Согласованная стоимость"
    And click choose colums apply
    And check that column "Согласованная стоимость" in grid between "10" and "100"


  Scenario: check filtr payment by card
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Оплата картой" in dispCentr
    And press button with text "Применить"
    And click on the first request
    And scroll to additionalPhone
    And check that element with name "Оплата картой" is selected

  Scenario: check filtr assesment
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Оценка" in dispCentr
    And click filtr "Хорошо"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Оценка"
    And click choose colums apply
    And check that column "Оценка" is "Хорошо"


  Scenario: check filtr review
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Отзыв" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Отзыв о работе"
    And click choose colums apply
    And click on the first request
    And scroll to addFile
    And check that column "Отзыв о работе" and field in the card of request is same


  Scenario: check filtr returned for revision
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Возвращена на доработку" in dispCentr
    And press button with text "Применить"
    And click on the first request
    And check that element with name "Возвращено на доработку" is displayed in request

  Scenario: check filtr fio executor
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "ФИО исполнителя" in dispCentr
    And type to input "Иванов Александр Дмитриевич" in filtr "ФИО исполнителя" in dispCentr
    And click filtr "Иванов Александр Дмитриевич" in dispCentr
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Исполнитель"
    And click choose colums apply
    And check that column "Исполнитель" is "Иванов Александр Дмитриевич"


#  Scenario: check filtr work create request
#    Given click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr "Создал заявку (должность)" in dispCentr
#    And click filtr "Диспечтер ОДС"
#    And click empty in form filtr of request
#    And press button with text "Применить"
#    And click choose colums
#    And click button deselectAll
#    And click choose column "Принял заявку"
#    And click choose colums apply
#    And check that column "Принял заявку" is "Диспетчер ОДС"


  Scenario: check filtr fio create request
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Создал заявку (ФИО)" in dispCentr
    And click filtr "as_auto"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Принял заявку"
    And click choose colums apply
    And check that column "Принял заявку" is "BorodavkoYV_lef"


  Scenario: check filtr fio close request
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Закрыл заявку (ФИО)" in dispCentr
    And type to input "Бородавко Юлия Владимировна" in filtr "Закрыл заявку (ФИО)" in dispCentr
    And click filtr "Бородавко Юлия Владимировна" in dispCentr
    And click empty in form filtr of request
    And press button with text "Применить"
    And click on the first request
    And scroll to addFile
    And click button with "Показать историю исполнения заявки"
    And check that fieldClosedRequest is "Бородавко Юлия Владимировна"


  Scenario: check filtr source
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Источник" in dispCentr
    And click filtr "телефон"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Источник"
    And click choose colums apply
    And check that column "Источник" is "телефон"


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"







