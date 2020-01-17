@dispCentr
Feature: smoke test #1, Проверка фильтрации заявок роль СТП

  Scenario: authorization at STP
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "стп"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check filtr adress
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr STP
    And click filter
    And press button with text "Сбросить фильтр"
    And type to input "по" in filtr "Адрес" in dispCentr
    And check that first adress in filtr adress is not visible
    And type to input "1-й Николощеповский переулок, дом 20/" in filtr "Адрес" in dispCentr
    And click first address with text "1-й Николощеповский переулок, дом 20/"
    #And click first address in filtrAddress
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


  Scenario: check filtr date of create
    And click filter
    And press button with text "Сбросить фильтр"
    And click to field date create with
    And type to input text "01.12.2018 10:00" in "Дата создания" "c" in filtr
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
    And type to input text "20.08.2018 06:00" in "Дата закрытия:" "c" in filtr
    And click empty in form filtr of request
    And click to field date close by
    And type to input text "23.08.2018 23:00" in "Дата закрытия:" "по" in filtr
    And click empty in form filtr of request
    And press button with text "Применить"
    And check that date close of request in card between "20.08.2018 06:00" and "23.08.2018 23:00"


  Scenario: check filtr okrug
    And click filter
    And press button with text "Сбросить фильтр"
    And click filtr okrug in request filtrs
    And type to input "Центральный административный округ" in filtr "Округ" in dispCentr
    And click first okrug with text "Центральный административный округ"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Округ"
    And click choose colums apply
    And check that column "Округ" is "ЦАО"


  Scenario: check filtr district
    And click filter
    And press button with text "Сбросить фильтр"
    And click filtr okrug in request filtrs
    And type to input "Центральный административный округ" in filtr "Округ" in dispCentr
    And click first okrug with text "Центральный административный округ"
    And click filtr district in request filtrs
    And type to input "муниципальный округ Арбат" in filtr "Район" in dispCentr
    And click first district with text "муниципальный округ Арбат"
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Район"
    And click choose colums apply
    And check that column "Район" is "Арбат"


  Scenario: check filtr №ODS
    And click filter
    And press button with text "Сбросить фильтр"
    And click filtr okrug in request filtrs
    And type to input "Центральный административный округ" in filtr "Округ" in dispCentr
    And click first okrug with text "Центральный административный округ"
    And click filtr district in request filtrs
    And type to input "муниципальный округ Арбат" in filtr "Район" in dispCentr
    And click first district with text "муниципальный округ Арбат"
    And click empty in form filtr of request
    And type to input "Автоматизация ОДС" in filtr "№ ОДС" in dispCentr
    And click first ods with text "Автоматизация ОДС"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "ОДС"
    And click choose colums apply
    And check that column "ОДС" is "ОДС автотесты"



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
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Контактное лицо"
    And click choose colums apply
    And check that column "Контактное лицо" is "Тест"

  Scenario: check filtr type of request
    Given click filter
    And press button with text "Сбросить фильтр"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Тип дефекта"
    And click choose colums apply
    And check that column "Тип дефекта" is "Плотницкие, слесарные работы Другое"

  Scenario: check filtr type of payable
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Платность" in dispCentr
    And click filtr "бесплатная"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Платная"
    And click choose colums apply
    And check that column "Платная" is "Бесплатная"


  Scenario: check filtr time of deadline day
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "В течение суток"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Дата составления"
    And click choose colums apply
    And check that date closed from "В течение суток"

  Scenario: check filtr time of deadline 1 to 7 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 1 до 7 суток"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And check that date closed from "От 1 до 7 суток"

  Scenario: check filtr time of deadline 8 to 15 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "От 8 до 15 суток"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And check that date closed from "От 8 до 15 суток"

  Scenario: check filtr time of deadline more 15 days
    Given click filter
    And press button with text "Сбросить фильтр"
    And click filtr "Срок выполнения заявки" in dispCentr
    And click filtr "Более 15 суток"
    And click empty in form filtr of request
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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
    And click filtr "Новая"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Статус"
    And click choose colums apply
    And check that column "Статус" is "Новая"

  Scenario: check filtr request cancell reason
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Причина отмены" in dispCentr
    And click filtr "Заявитель обратился в стороннюю организацию"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Причина отмены"
    And click choose colums apply
    And check that column "Причина отмены" is "Заявитель обратился в стороннюю организацию"

  Scenario: check filtr reject reason
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Причина отклонения" in dispCentr
    And click filtr "Множественное обращение по данной проблеме/дефекту"
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Причина отклонения"
    And click choose colums apply
    And check that column "Причина отклонения" is "Множественное обращение по данной проблеме/дефекту"

  Scenario: check filtr payable status
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Статус оплаты" in dispCentr
    And click filtr "не оплачено"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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
    And type to input "10" in filtr "Согласованная стоимость" in dispCentr
    And type to input "100" in filtr "до" in dispCentr
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And check that element with name "Оплата картой" is selected in all requests


  Scenario: check filtr assesment
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Оценка" in dispCentr
    And click filtr "Хорошо"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Отзыв о работе"
    And click choose colums apply
    And check that column "Отзыв о работе" and field in the card of request is same


  Scenario: check filtr returned for revision
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Возвращена на доработку" in dispCentr
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And check that element with name "Возвращено на доработку" is displayed in all elements

  Scenario: check filtr fio contractor
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Организация-исполнитель" in dispCentr
  #  And type to input "dfd" in filtr "Организация-исполнитель" in dispCentr
    And type to input "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr "Организация-исполнитель" in dispCentr
    And choose "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr Fio Executer
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Исполнитель"
    And click choose colums apply
    And check that column "Исполнитель" is "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»"

#  Scenario: check filtr fio executor
#    Given click filter
#    And press button with text "Сбросить фильтр"
#    And press button with text "Расширенный фильтр"
#    And click filtr "Организация-исполнитель" in dispCentr
#  #  And type to input "dfd" in filtr "Организация-исполнитель" in dispCentr
#    And type to input "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr "Организация-исполнитель" in dispCentr
#    And choose "ГБУ «ЖИЛИЩНИК РАЙОНА АРБАТ»" in filtr Fio Executer
#    And click filtr "ФИО исполнителя" in dispCentr
#   # And type to input "dfd" in filtr "ФИО исполнителя" in dispCentr
#   # And type to input "Мудрый Кирилл Александрович" in filtr "ФИО исполнителя" in dispCentr
#    And choose "Мудрый Кирилл Александрович" in filtr Fio Executer
#    And press button with text "Применить"
#    And click choose colums
#    And click button deselectAll
#    And click choose column "Исполнитель"
#    And click choose colums apply
#    And check that column "Исполнитель" is "Мудрый Кирилл Александрович"


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
    And type to input "fsd" in filtr "Создал заявку (ФИО)" in dispCentr
    And type to input "ОДС авто" in filtr "Создал заявку (ФИО)" in dispCentr
    And choose " ОДС авто " in filtr Fio Creator
    And click empty in form filtr of request
    And press button with text "Применить"
    And click choose colums
    And click button deselectAll
    And click choose column "Принял заявку"
    And click choose colums apply
    And check that column "Принял заявку" is "Диспетчер ОДС"


  Scenario: check filtr fio close request
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Закрыл заявку (ФИО)" in dispCentr
    And type to input "fdsa" in filtr "Закрыл заявку (ФИО)" in dispCentr
    And type to input "ОДС авто" in filtr "Закрыл заявку (ФИО)" in dispCentr
    And choose " ОДС авто " in filtr Fio Closer
    And click empty in form filtr of request
    And press button with text "Применить"
    And click on the first request
    And scroll to addFile
    And click button with "Показать историю исполнения заявки"
    And check that fieldClosedRequest is "Автоматизация ОДС"


  Scenario: check filtr source
    Given click filter
    And press button with text "Сбросить фильтр"
    And press button with text "Расширенный фильтр"
    And click filtr "Источник" in dispCentr
    And click filtr "телефон"
    And type to input "Плотницкие, слесарные работы Другое" in filtr "Тип заявки" in dispCentr
    And click first type of request
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







