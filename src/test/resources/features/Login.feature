Feature: Login to nop commerce application
  Scenario: Verify login with valid credentials
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on login link from the navbar
    Then  I should be navigated to login page
    When I enter email as "qa6@nop.com"
    And I enter password as "Testing@123"
    And I click on login button
    Then I should be logged in successfully