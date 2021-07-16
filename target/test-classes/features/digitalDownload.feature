Feature: Add Digital Downloads to shopping cart

  Background:
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on login link from the navbar
    Then  I should be navigated to login page
    When I enter email id as "qaz5@gmail.com" password as "plm067" and click on login button
    Then I should be logged in successfully
    When I click on Digital Download from navbar
    Then I should be navigated to digital download page

  Scenario: verify Digital Downloads in nop commerce site

    When I click on Science & Faith
    Then I should be navigated to science-faith page
    When I click on add to cart link
    Then I should see The product has been added to your shopping cart notification message on science-faith page
    When I Click on close message button
    And  mouseHover on shopping cart
    Then I should be see There are 1 item(s) in your cart message
    When I click on go to cart link
    Then I should be navigated to shopping cart page
    When I click on i agree check box
    And  I click on Checkout button
    Then I should be navigated to checkout page
    When I enter all the mandatory fields
    |Country|City  |Address 1|Zip code|Phone number|
    |Albania|london|ilford   |ig11nm  |176211588   |
    And I click on continue button
    When I click on continue button on billing page
    And I click on continue on payment page
    And I click on continue payment info
    And I click on continue confirm billing
    Then I should see Your order has been successfully processed! message
    When I click on continue last button
    Then I should be navigated to home page


















