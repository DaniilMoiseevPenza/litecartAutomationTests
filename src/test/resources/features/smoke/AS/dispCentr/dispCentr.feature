Feature: smoke test #1, Проверка стартовой страницы Диспетчерского центра

  Scenario: authorization at AS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "ас"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check Dispatch Center page on all elements
    Given check that page is "center"
    And check that element with name "Единый Диспетчерский Центр" is displayed in blockDispCentr
    And check that element with name "8 (495) 539-53-53" is displayed
    And check that element with name "Служба технической поддержки" is displayed
    And check that element with name "edc_support@mos.ru" is displayed
    And check that element with name "8 (495) 268-01-68" is displayed
    And check that element with name "Диспетчерский центр" is displayed
    And check that element with name "Аварийная служба" is displayed
    And check that element with name "АС автоматизация ЕДЦ 2.0" is displayed
    And check that element with name "Автоматизация АС" is displayed
    And check that element with name "Заявки" is displayed
    And check that element with name "На контроле" is displayed
    And check that element with name "Активные" is displayed
    And check that element with name "Ожидают обработки" is displayed
    And check that element with name "Новые" is displayed
#    And check that element with name "На доработку" is displayed
    And check that element with name "В работе" is displayed
    And check that element with name "Закрыты" is displayed
    And check that element with name "Отклонены" is displayed
    And check that element with name "Отменены" is displayed
    And check that element with name "Журнал уведомлений" is displayed
    And check that element with name "Комментарии к заявкам" is displayed
    And check that element with name "Отмена заявок" is displayed
#    And check that element with name "Системные уведомления" is displayed
#    And check that element with name "Отклонение заявок" is displayed
#    And check that element with name "Закрытие заявок" is displayed
    And check that element with name "Создать заявку" is displayed
    And check that element with name "Номер заявки" is displayed
    And check that element with name "ОДС" is displayed
    And check that element with name "Дата составления" is displayed
    And check that element with name "Приоритет" is displayed
    And check that element with name "Статус" is displayed
    And check that element with name "Адрес" is displayed
    And check that element with name "Описание проблемы" is displayed
    And scroll to column with name "Желаемое время"
    And check that element with name "Заявитель" is displayed
    And check that element with name "Тип дефекта" is displayed
    And check that element with name "Платная" is displayed
    #And check that element with name "Статус оплаты" is displayed
    And check that element with name "Исполнитель" is displayed
    And check that element with name "Желаемая дата" is displayed
    And check that element with name "Желаемое время" is displayed
    And scroll to column with name "Согласованная стоимость"
    And check that element with name "Причина отмены" is displayed
    And check that element with name "Причина отклонения" is displayed
    And check that element with name "Округ" is displayed
    And check that element with name "Район" is displayed
    And check that element with name "Принял заявку" is displayed
    And check that element with name "Вид выполненных работ" is displayed
    And check that element with name "Согласованная стоимость" is displayed
    And scroll to column with name "Подъезд"
    And check that element with name "Оценка" is displayed
    And check that element with name "Отзыв о работе" is displayed
    And check that element with name "Контактное лицо" is displayed
    And check that element with name "Телефон основной" is displayed
    And check that element with name "Телефон дополнительный" is displayed
    And check that element with name "Квартира" is displayed
    And check that element with name "Подъезд" is displayed
    And scroll to column with name "Источник"
    And check that element with name "Этаж" is displayed
    And check that element with name "Адрес дома" is displayed
    And check that element with name "Источник" is displayed
    #And check that element with name "Специализация исполнителя" is displayed
    And check that element search is displayed
    And check that element find is displayed
    And check that element choice of columns is displayed
    And check that element advanced filter is displayed
    And check that element export is displayed
    And click to open support
    And check that element with name "Поддержка" is displayed
    And check that element with name "Обратная связь" is displayed
    And check that element with name "Часто задаваемые вопросы (FAQ)" is displayed
    And check that element with name "Настройки" is displayed
    And check that element with name "Выйти" is displayed
    And click to close support

  Scenario: check form dispCentr pagination
    Given check that page is "center"
    And check that element with name "Страница 1" is displayed in pagination
    And click next page
    And check that element with name "Страница 2" is displayed in pagination
    And click to go to prev page
    And check that element with name "Страница 1" is displayed in pagination
    And click to go to last page
    And check that last page in grid request is last
    And click to go to first page
    And check that element with name "Страница 1" is displayed in pagination


  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"

