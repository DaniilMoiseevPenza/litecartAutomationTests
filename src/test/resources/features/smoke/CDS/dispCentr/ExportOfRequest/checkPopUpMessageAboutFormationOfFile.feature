@dispCentr
Feature: smoke test, Проверка отображения всплывающего сообщения о формировании файла выгрузки, роль ЦДС

  Scenario: authorization at CDS
    Given open start page
    And check that title page is "Единый Диспетчерский Центр"
    And login "цдс"
    When press button with text "Войти"
    Then check that page is "center"

  Scenario: check pop up message about formation of file
    Given check that page is "center"
    And check that title page is "Единый Диспетчерский Центр"
    And wait pagination disp centr
    And click rubric "Новые"
    And click buttonExportRequest
    And click buttonExportRequest
    And click export in formExport
    And check pop-up message at export of request is displayed

  Scenario: logout
    And click to open support
    And click exit
    And wait page autorization
    And check that page is "login"