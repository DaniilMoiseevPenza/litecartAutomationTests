Feature: Покупка уточек

  Background:
    Given open start page
    And check that text "Most Popular" is visible

  Scenario: Покупка уточки без скидки
    When click on duck with name "Green Duck"
    Then check that text "Information" is visible
    When click button with name "Add To Cart"
    Then check that count in cart more than zero
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
    And click button with name "Confirm Order"
    Then check that text "Your order is successfully completed!" is visible
    And sleep