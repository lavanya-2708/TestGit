Feature: Add Books to shopping cart

  Scenario: verify Books in nop commerce site
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on BooksLink from navbar
    Then I should be navigated to Books page
    When I click on Pride and Prejudice
    Then I should be navigated to Pride and Prejudice page
    When I click on add to cart link in Pride Page
    Then I should see The product has been added to your shopping cart notification message on Pride and Prejudice page
    When I click on close notification
    And  mouseHover on shopping cart
    Then I should be see There are 1 item(s) in your cart message
    When I click on go to cart link
    Then I should be navigated to shopping cart page
    When I click on i agree check box
    And  I click on Checkout button