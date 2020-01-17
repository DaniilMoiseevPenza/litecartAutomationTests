@dispCentr
Feature: smoke test #1, Проверка колонок отображения роль СТП

  Background:
    Given open start page
    When check that title page is "Единый Диспетчерский Центр"
    Then login "кц"
    Then check that page is "center"
    And wait pagination disp centr STP



  Scenario: check the form of the choice of columns
    Then click choose colums
    When check that element with name is displayed in choose
    |Колонки для отображения|
    |Список колонок|
    |Выбранные колонки|
    |Колонки для отображения|
    When check that element select all is displayed
    When check that element deselect all is displayed
    When check that element swap all is displayed
    When check that element custom is displayed
    When check that element apply is displayed
    Then click to close form choose of colums


  Scenario Outline: check the display of columns in the grid <Название колонки>
    Then click button deselectAll
    Then click choose column "<Название колонки>"
    Then click choose colums apply
    When check that element with name "<Название колонки>" is displayed in grid
    Examples:
    |Название колонки       |
    |ОДС                    |
    |Дата составления       |
    |Категория              |
    |Тип дефекта            |
    |Приоритет              |
    |Статус                 |
    |Адрес                  |
    |Описание проблемы      |
    |Контактное лицо        |
    |Желаемое время         |
    |Вид выполненных работ  |
    |Исполнитель            |
    |Причина отмены         |
    |Причина отклонения     |
    |Управляющая компания   |
    |Принял заявку          |
    |Платная                |
    |Статус оплаты          |
    |Округ                  |
    |Район                  |
    |Согласованная стоимость|
    |Оценка                 |
    |Отзыв о работе         |
    |Квартира               |
    |Подъезд                |
    |Этаж                   |
    |Адрес дома             |
    |Источник               |
    |Возвратов на доработку |
    |Признак инцидента      |
    |Номер материнской заявки|
    |Дата отклонения        |
    |Дата отмены            |
    |Дата закрытия          |
    |Организация-исполнитель|



#  Scenario: check the display of columns in the grid "ОДС"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "ОДС"
#    And click choose colums apply
#    And check that element with name "ОДС" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Дата составления"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Дата составления"
#    And click choose colums apply
#    And check that element with name "Дата составления" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Адрес"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Адрес"
#    And click choose colums apply
#    And check that element with name "Адрес" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Описание проблемы"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Описание проблемы"
#    And click choose colums apply
#    And check that element with name "Описание проблемы" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Заявитель"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Заявитель"
#    And click choose colums apply
#    And check that element with name "Заявитель" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Исполнитель"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Исполнитель"
#    And click choose colums apply
#    And check that element with name "Исполнитель" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Желаемая дата"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Желаемая дата"
#    And click choose colums apply
#    And check that element with name "Желаемая дата" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Округ"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Округ"
#    And click choose colums apply
#    And check that element with name "Округ" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Район"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Район"
#    And click choose colums apply
#    And check that element with name "Район" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Вид выполненных работ"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Вид выполненных работ"
#    And click choose colums apply
#    And check that element with name "Вид выполненных работ" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Согласованная стоимость"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Согласованная стоимость"
#    And click choose colums apply
#    And check that element with name "Согласованная стоимость" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Оценка"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Оценка"
#    And click choose colums apply
#    And check that element with name "Оценка" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Телефон дополнительный"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Телефон дополнительный"
#    And click choose colums apply
#    And check that element with name "Телефон дополнительный" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Приоритет"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Приоритет"
#    And click choose colums apply
#    And check that element with name "Приоритет" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Статус"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Статус"
#    And click choose colums apply
#    And check that element with name "Статус" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Телефон основной"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Телефон основной"
#    And click choose colums apply
#    And check that element with name "Телефон основной" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Тип дефекта"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Тип дефекта"
#    And click choose colums apply
#    And check that element with name "Тип дефекта" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Платная"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Платная"
#    And click choose colums apply
#    And check that element with name "Платная" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Статус оплаты"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Статус оплаты"
#    And click choose colums apply
#    And check that element with name "Статус оплаты" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Причина отмены"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Причина отмены"
#    And click choose colums apply
#    And check that element with name "Причина отмены" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Причина отклонения"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Причина отклонения"
#    And click choose colums apply
#    And check that element with name "Причина отклонения" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Принял заявку"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Принял заявку"
#    And click choose colums apply
#    And check that element with name "Принял заявку" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Источник"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Источник"
#    And click choose colums apply
#    And check that element with name "Источник" is displayed in grid
#
#
#  Scenario: check the display of columns in the grid "Отзыв о работе"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Отзыв о работе"
#    And click choose colums apply
#    And check that element with name "Отзыв о работе" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Подъезд"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Подъезд"
#    And click choose colums apply
#    And check that element with name "Подъезд" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Квартира"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Квартира"
#    And click choose colums apply
#    And check that element with name "Квартира" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Этаж"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Этаж"
#    And click choose colums apply
#    And check that element with name "Этаж" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Желаемое время"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Желаемое время"
#    And click choose colums apply
#    And check that element with name "Желаемое время" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Адрес дома"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Адрес дома"
#    And click choose colums apply
#    And check that element with name "Адрес дома" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Контактное лицо"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Контактное лицо"
#    And click choose colums apply
#    And check that element with name "Контактное лицо" is displayed in grid
#
#  Scenario: check the display of columns in the grid "Тип заявки (категория)"
#    Given click choose colums
#    And click button deselectAll
#    And click choose column "Тип заявки (категория)"
#    And click choose colums apply
#    And check that element with name "Тип заявки (категория)" is displayed in grid


#  Scenario: check buttons in the form of column selection
#    And click choose colums
#    And click button deselectAll
#    And click button select all
#    And check that element with name "Номер заявки" is displayed in selected columns
#    And click button deselectAll
#    And check that element with name "Номер заявки" is displayed in column list
#    And click button swapAll
#    And check that element with name "Номер заявки" is displayed in selected columns

#  Scenario:  close form choise of colums
#    And click to close form choise of colums

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"





