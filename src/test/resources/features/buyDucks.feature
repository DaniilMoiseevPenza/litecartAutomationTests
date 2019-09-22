Feature: Покупка уточек

  Background:
    Given open start page
    And check that text "Most Popular" is visible
    And clear cart if it not null

  Scenario: Покупка уточки без скидки
    When click on duck with name "Green Duck"
    Then check that text "Information" is visible
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "1"
    When click text with name "Checkout »"
    Then check that text "Customer Details" is visible
    When set text "123" in field "Tax ID"
    And set text "123" in field "Company"
    And set text "123" in field "First Name"
    And set text "123" in field "Last Name"
    And set text "123" in field "Address 1"
    And set text "123" in field "Address 2"
    And set text "123445" in field "Postcode"
    And set text "123" in field "City"
    And set text "1@mail.ru" in field "Email"
    And set text "123" in field "Phone"
    And click text with name "Order Summary"
    And wait page stop scrolling
    And check information in order
    And click button with name "Confirm Order"
    Then check that text "Your order is successfully completed!" is visible

  Scenario: Покупка уточки со скидкой
    When click on duck with name "Yellow Duck"
    Then check that text "Information" is visible
    And click text with name "-- Select --"
    And click text with name "Small"
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "1"
    When click text with name "Checkout »"
    Then check that text "Customer Details" is visible
    When set text "123" in field "Tax ID"
    And set text "123" in field "Company"
    And set text "123" in field "First Name"
    And set text "123" in field "Last Name"
    And set text "123" in field "Address 1"
    And set text "123" in field "Address 2"
    And set text "123445" in field "Postcode"
    And set text "123" in field "City"
    And set text "1@mail.ru" in field "Email"
    And set text "123" in field "Phone"
    And click text with name "Order Summary"
    And check information in order
    When click button with name "Confirm Order"
    Then check that text "Your order is successfully completed!" is visible

  Scenario: Покупка уточек одного вида и разных размеров
    When click on duck with name "Yellow Duck"
    Then check that text "Information" is visible
    And click text with name "-- Select --"
    And click text with name "Small"
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "1"
    And click text with name "Small"
    And click text with name "Medium +$2.50"
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "2"
    When click text with name "Checkout »"
    Then check that text "Customer Details" is visible
    When set text "123" in field "Tax ID"
    And set text "123" in field "Company"
    And set text "123" in field "First Name"
    And set text "123" in field "Last Name"
    And set text "123" in field "Address 1"
    And set text "123" in field "Address 2"
    And set text "123445" in field "Postcode"
    And set text "123" in field "City"
    And set text "1@mail.ru" in field "Email"
    And set text "123" in field "Phone"
    And click text with name "Order Summary"
    And check information in order
    And scroll to element with text "Confirm Order"
    When click button with name "Confirm Order"
    Then check that text "Your order is successfully completed!" is visible

  Scenario: Покупка уточек разных вида и разных размеров
    When click on duck with name "Green Duck"
    Then check that text "Information" is visible
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "1"
    When click on duck with name "Yellow Duck"
    Then check that text "Information" is visible
    And click text with name "-- Select --"
    And click text with name "Medium +$2.50"
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "2"
    And click text with name "Medium +$2.50"
    And click text with name "Small"
    And save information about product
    When click button with name "Add To Cart"
    Then check that count in cart "3"
    When click text with name "Checkout »"
    Then check that text "Customer Details" is visible
    When set text "123" in field "Tax ID"
    And set text "123" in field "Company"
    And set text "123" in field "First Name"
    And set text "123" in field "Last Name"
    And set text "123" in field "Address 1"
    And set text "123" in field "Address 2"
    And set text "123445" in field "Postcode"
    And set text "123" in field "City"
    And set text "1@mail.ru" in field "Email"
    And set text "123" in field "Phone"
    And click text with name "Order Summary"
    And check information in order
    And scroll to element with text "Confirm Order"
    When click button with name "Confirm Order"
    Then check that text "Your order is successfully completed!" is visible

  Scenario: Проверка невозможно покупки уточки, которых нет
    When click on duck with name "Yellow Duck"
    Then check that text "Information" is visible
    And click text with name "-- Select --"
    And click text with name "Small"
    And check button with name "Add To Cart" is disable

  Scenario: Проверка уменьшения общего числа уточек после добавления в корзину
    When click on duck with name "Green Duck"
    Then check that text "Information" is visible
    And save information about product
    When click button with name "Add To Cart"
    Then check that common count of product degrees
