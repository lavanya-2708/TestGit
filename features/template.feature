# https://rixxo-hq.atlassian.net/browse/BOB-5176

Feature: Bob Show Home Page

    Both registered and guest user must have acess, easily navigation,
    and interactions on Home Page items,
    
 Scenario: As a user I would like to sign up to BoB using my Facebook account 
        Given user is on the web app home page
        And user click the Login button
        Then "LOGIN TO CONTINUE" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "FACEBOOK" button
         Then user direct to the FACEBOOK page
         When user type valid credentials 
         When user click on "Login" button
         Then "Home" page must display


Scenario Outline:  Home page for registered user
        Given user is on web app home page
        Then navbar items must be displayed
        Given user is on <navbar item2> page and clicks <navbar item1>
        Then user must be redirected back to <navbar item1>
        Given user is on <navbar item3> page and clicks <navbar item1>
        Then user must be redirected back to <navbar item1>
        Examples:
            |  navbar item1 || navbar item2 || navbar item3  || navbar item4  | |username||password|
            |   Home        ||   Search     ||    Playlist  ||   Profile      | |username||password|


Scenario:  Web Sign up with Mobile number (unregistered verify with spaces 11 digit)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters valid 11digit with spaces mobile number to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "Please ensure all fields are filled in." toast message
        When user type the valid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the invalid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then "Verify Account" page must display
        Then user should see "Yesssss! You’ve joined BoB! I think you’re going to love it here!" toast message
        Then the valid 11digit mobile number must be prepopulated 
        And user should receive SMS Code to the mobile number
        Then user should not be able to edit the prepopulated number
        When user click on "Confirm" button
        Then User should see "Confirmation code cannot be empty" toast message
        When user type the valid code to the "Enter your code" edit field
        And user click on "Confirm" button
        Then User should see " You have successfully completed your sign-up verification." toast message

        Scenario: Web Sign up with Mobile number (invalid numbers)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters invalid number to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "A valid email or phone number must be provided." toast message

