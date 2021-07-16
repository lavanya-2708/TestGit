
Feature: Sign In

  User must be able to easly log in


    Scenario: Registered user login [ Valid credentials]
      Given user is on the web app home page
      And user click the Login button
      Then Sign in page must display
      Given user entered valid credentials
      And clicked Sign In button
      Then user must be logged in

  

    Scenario: Registered user login [ Invalid credentials]
      Given user is on the web app home page
      And user click the Login button
      Then Sign in page must display
      Given user entered invalid credentials
      And clicked Sign In button
      Then user must not be logged in


    Scenario: Create an account
      Given user is on the web app home page
      And user click the Login button
      Then Sign in page must display
      Given user clicks Create Account link
      Then user must be redirected to Create a new account page


