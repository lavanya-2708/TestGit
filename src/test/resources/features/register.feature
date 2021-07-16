Feature: Register new user
   @register
  Scenario: verify register functionality by providing data in mandatory fields
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then I should be navigated to home page
    When I click on register link from the navbar
    Then I should be navigated to register page
    When I select gender as female
    And I enter firstName lastName email password confirmPassword
    |firstName|lastName|email|password|confirmPassword|
    |qaz   |067   |qaz5@gmail.com|plm067|plm067|

    And I click on register button
    Then I should be registered successfully
