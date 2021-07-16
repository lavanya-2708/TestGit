"Web - Edit display name

Description
As an account holder I would like to be able to change my display name
Restricted display names
Brand names
BoB/bob/BOB/Bob
Offensive content
This will be a free text field which has restrictions on inappropriate content
Display Name is a required field

Acceptance Criteria
Users are limited to 1 display name change in 30 days
Only unique names will be accepted
White spaces are ignored for validation
Characters can only include Alphanumeric, underscores, spaces, apostrophes and hyphens
display name cannot be blank
If a user attempts to modify their display name within 30 days the Changing display name
failed warning message appears if save is clicked
Given that a required field has no information then the field will receive red text “required”
if the user clicks the field, leaves it empty and clicks another cell"

Feature: Edit display name

  As an account holder I would like to be able to change my display name

  Scenario: User attempts to save without any display name
    Given user is on the web app home page
    When user click on "profile" button
    Then "profile" page must display
    When user click on "Account Settings" button
    Then "EDIT PROFILE" page must display
    And  leaves the "Display Name" field empty
    And  user click on "Save Changes" button
    Then user should see red text "required" in the "Display Name" field toast message


  Scenario: User attempts to change display name with valid data
         Given user is on the web app home page
          When user click on "profile" button
          Then "profile" page must display
          When user click on "Account Settings" button
          Then "EDIT PROFILE" page must display
          When user type the valid name to the "Display Name" edit field
          And  user click on "Save Changes" button
          Then "Account Display" page must display
          And  user's valid name should display


 Scenario: User attempts to change display name using invalid characters
        Given user is on the web app home page
          When user click on "profile" buttons
          And  user navigates to "profile" page
          Then "profile" page must display
          When user click on "Account Settings" button
          Then "EDIT PROFILE" page must display
          When user attempts to change "Display Name"
          And  the user hasn't changed it in the last 30 days
          And  the user enters the characters other than Alphanumeric, underscores, spaces, apostrophes and hyphens
          Then user should see "Enter Valid characters" toast message


 Scenario: User attempts to change display name again within the next 30 days
          Given user is on the web app home page
          When user click on "profile" button
          And  user navigates to "profile" page
          Then "profile" page must display
          When user click on "Account Settings" button
          Then "EDIT PROFILE" page must display
          When user entered valid characters to change the "Display Name"
          And  the user already changed the display name in the last 30 days
          And  the user clicks on Save button
          Then user should see "Changing display name failed warning message" toast message


  Scenario: User attempts to change display name which is already used by other users
          Given user is on the web app home page
          When user click on "profile" button
          And  user navigates to "profile" page
          Then "profile" page must display
          When user click on "Account Settings" button
          Then "EDIT PROFILE" page must display
          When user entered valid characters to change the "Display Name"
          And  the user hasn't changed the display name in the last 30 days
          And  verify if the new "Display Name" without white spaces already exists in the system
          Then user should see "Display name already exists" toast message









