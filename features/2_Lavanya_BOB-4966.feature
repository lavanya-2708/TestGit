Web - Add/Change Password, Email and Recovery Email

Description
As an account holder I would like to be able to add the ability to log into the app via email,
change my email or update my password
Required fields: Password, confirm password, email/mobile number

Acceptance Criteria
Clicking the edit button on the email line will show the Change Password/Email Modal
Given that a required field has no information then the field will receive red text “required”
if the user clicks the field, leaves it empty and clicks another cell

Feature: Add/Change Password, Email and Recovery Email

  As an account holder I would like to be able to add the ability to log into the app via email,
  change my email or update my password

  Scenario Outline: As a user I want to be able to log in to my account via Valid email account (valid email/password)
   # Given user is on the web app home page
   # And  user click the "LOG IN" button
    #Then "LOG IN" page must display
    #When user enters valid email to the "Email your email or Phone Number" edit field
    #And user type the valid password to the "Enter your password" edit field
   # And user click the "LOG IN" button
    Given user is on the web app home page
    When user click on "profile" button
    Then "profile" page must display
    When user click on "Account Settings" button
    Then "Account Settings" page must display
    When user click on the Primary Email edit field
    Then "Change Password/Email" modal window should display
    When user type the valid "<Primary Email>" to the "Primary Email" edit field
    And user type the valid "<NEW PASSWORD>" to the "NEW PASSWORD" edit field
    And user type the valid "<RE-ENTER PASSWORD>" to the "RE-ENTER PASSWORD" edit field
    And  user click on "Save Changes" button
    Then "Account Settings" page must display
    And  user's valid Primary Email should display

    Examples:
    |Primary Email   |NEW PASSWORD     |RE-ENTER PASSWORD|
    |Abc@123         |X5j13$#eCM1cG@Kdc|X5j13$#eCM1cG@Kdc|
    |test@domain.com |%j8kr^Zfpr!Kf#Zjn|%j8kr^Zfpr!Kf#Zjn|
    |abd@gmail.com   |vUUN7E@!2v5TtJSyZ|PkxgbEM%@hdBnub4|

  Scenario Outline: As a user I want to be able to log in to my account via Valid email (invalid email/password)

    Given user is on the web app home page
    When user click on "profile" button
    Then "profile" page must display
    When user click on "Account Settings" button
    Then "Account Settings" page must display
    When user click on the Primary Email edit field
    Then "Change Password/Email" modal window should display
    When user type the valid "<Primary Email>" to the "Primary Email" edit field
    And user type the valid "<NEW PASSWORD>" to the "NEW PASSWORD" edit field
    And user type the valid "<RE-ENTER PASSWORD>" to the "RE-ENTER PASSWORD" edit field
    And  user click on "Save Changes" button
    Then "Account Settings" page must display
    And  user should see error toast message

    Examples:
      |Primary Email   |NEW PASSWORD|RE-ENTER PASSWORD|
      |.test@domain.com|&@#$^#$#%   | 223592039       |
      |A@b@c@domain.com|223592039   | &@#$^#$#%       |
      |                |123456       |Qwerty          |
      |.test@domain.com|             |&@#$^#$#%        |

  Scenario: User attempts to save changes without any email and password

    Given user is on the web app home page
    When user click on "profile" button
    Then "profile" page must display
    When user click on "Account Settings" button
    Then "Account Settings" page must display
    When user click on the Primary Email edit field
    Then "Change Password/Email" modal window should display
    When leaves the "Primary Email" field empty
    And leaves the "NEW PASSWORD" field empty
    And leaves the "RE-ENTER PASSWORD" field empty
    And  user click on "Save Changes" button
    Then "Account Settings" page must display
    Then user should see red text "required" field toast message
   # Then User should see "Please ensure all fields are filled in." toast message




























