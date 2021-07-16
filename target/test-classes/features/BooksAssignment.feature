Feature: Add Books to shopping cart

  Background:
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on BooksLink from navbar
    Then I should be navigated to Books page


  Scenario:Verify Add To Cart button on Pride and Prejudice page
    When I click on Pride and Prejudice
    Then I should be navigated to Pride and Prejudice page
    When I click on add to cart link on Pride Page
    Then I should see The product has been added to your shopping cart notification message on Pride and Prejudice page

  Scenario:Verify Add To Cart button on First Prize Pies page
    When I click on First Prize Pies
    Then I should be navigated to First Prize Pies page
    When I click on add to cart link on First Prize
    Then I should see The product has been added to your shopping cart notification message on First Prize Pies page

  Scenario:Verify Add To Cart button on Fahrenheit 451 by Ray Bradbury page
    When I click on Fahrenheit by Ray Bradbury
    Then I should be navigated to Fahrenheit by Ray Bradbury page
    When I click on add to cart link
    Then I should see The product has been added to your shopping cart notification message on Fahrenheit by Ray Bradbury page

  Scenario:Verify Add to wishlist button on product page
    When I click on Add to wishlist button on Pride and Prejudice page
    Then I should see The product has been added to your wishlist notification
    When I click on close message notification
    When I click on wishlist link
    Then I should be navigated to wishlist Page

  Scenario:Verify Add to compare list button on product page
    When I click on Add to compare list on Pride and Prejudice page
    Then I should see The product has been added to your product comparison
    When I click on close message notification
    And  I click on compare products list in the footer
    Then I should be navigated to compare products page
    When I click on clear button on compare list page
    Then I should see You have no items to compare.

  Scenario:Verify Email a friend on product page without registration
    When I click on Email a friend on Pride and Prejudice page
    Then I should be navigated to Email a friend page
    Then I fill all the mandatory fields fEmail yEmail and click on SEND EMAIL button
      |fEmail|yEmail|
      | asd@gmail.com|plh4@gmail.com|
    Then I should see error message like Only registered customers can use email a friend feature

  Scenario:Verify Remove button on shopping cart page
    When I click on add to cart link
    Then I should see The product has been added to your shopping cart notification message on Pride and Prejudice page
    When I click on close message notification
    And  mouseHover on shopping cart
    And I click on go to cart link
    Then I should be navigated to shopping cart page
    When I click on Remove shopping cart page
    Then I should see Your Shopping Cart is empty

  Scenario:Verify Add your review without register user
    When I click on add your review on Pride and Prejudice page
    Then I should be navigated to review page
    Then I should see error message

  Scenario: verify if we can add the products from wishlist to shopping cart
    When I click on Add to wishlist button on Pride and Prejudice page
    Then I should see The product has been added to your wishlist notification
    When I click on close message notification
    When I click on wishlist link
    Then I should be navigated to wishlist Page
    When I click on check on Add to cart check box on wishlist page and click on ADD TO CART button
    When I click on add to cart link on wishlist page
    Then I should be navigated to shopping cart page

  Scenario: verify error message when uncheck the products and click on Add to cart on wishlist page
    When I click on Add to wishlist button on Pride and Prejudice page
    Then I should see The product has been added to your wishlist notification
    When I click on close message notification
    When I click on wishlist link
    Then I should be navigated to wishlist Page
    When I click on add to cart link on wishlist page
    Then I should see error messsage
