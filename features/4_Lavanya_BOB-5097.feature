Web - Terms & Conditions

Description
As an account holder I want to review the terms and conditions

Acceptance Criteria
Clicking on terms and conditions navigates to terms and conditions web page
Feature:
  As an account holder I want to review the terms and conditions

  Scenario: User reviews terms and conditions
    Given user is on the web app home page
    And user clicks on "Profile" navbar item
    Then user is on the "About me/Profile" page
    And user clicks on "Terms and conditions" hyperlink under Permissions
    Then user should see "Terms and conditions" web page
    When click the back navigation button
    Then user is on the "About me/Profile" page








