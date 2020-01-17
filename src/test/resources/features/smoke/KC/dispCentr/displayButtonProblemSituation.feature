#Feature: smoke test #1, Отображение кнопки Проблемная ситуация
#
#  Scenario: authorization at KC
#    Given open start page
#    And check that title page is "Единый Диспетчерский Центр"
#    And login "кц"
#    When press button with text "Войти"
#    Then check that page is "center"
#
#  Scenario: просмотр обычной бесплатной заявки в статусе новая
#    Given check that page is "center"
#    And check that title page is "Единый Диспетчерский Центр"
#    And click filter
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе новая
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе новая
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе новая
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе новая
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе новая
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Новая"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#
#  Scenario: просмотр обычной бесплатной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе ожидает обработки
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Ожидает обработки"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#
#  Scenario: просмотр обычной бесплатной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе В работе
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "В работе"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
#    And check that element with name "Проблемная ситуация" is displayed in request
#    And click collapse and expand request
#
#
#  Scenario: просмотр обычной бесплатной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе Закрыта
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Решена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#
#  Scenario: просмотр обычной бесплатной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе Отменена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отменена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#
#  Scenario: просмотр обычной бесплатной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной платной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной платной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр обычной бесплатной/платной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Обычная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: просмотр аварийной бесплатной/платной заявки в статусе Отклонена
#    And click filter
#    And press button with text "Сбросить фильтр"
#    And click filtr "Платность" in dispCentr
#    And click filtr "бесплатная / платная"
#    And click empty
#    And press button with text "Расширенный фильтр"
#    And click filtr "Приоритет" in dispCentr
#    And click filtr "Аварийная"
#    And click empty
#    And click filtr "Статус" in dispCentr
#    And click filtr "Отклонена"
#    And click empty
#    And press button with text "Применить"
#    And click on the first request
#    And scroll to addFile
##    And check that element with name "Проблемная ситуация" is not displayed in request
#    And click collapse and expand request
#
#  Scenario: logout
#    And click to open support
#    And click exit
#    And wait page autorization
#    And check that page is "login"
#
#
#
#
#
