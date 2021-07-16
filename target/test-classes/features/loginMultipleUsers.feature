Feature: Login to nop commerce application
  Scenario Outline: Verify login with valid credentials
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on login link from the navbar
    Then  I should be navigated to login page
    When I enter email as "<emails>"
    And I enter password as "<password>"
    And I click on login button
    Then I should be logged in successfully

    Examples:
    |emails| password|
    |lavi.user@gmail.com|Testing|
    |lavi1.user@gmail.com|Testing|
    |lavi2.user@gmail.com|Testing|