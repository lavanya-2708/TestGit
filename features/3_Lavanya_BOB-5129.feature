Web - Manage Your Content Library

Description
As an account holder I want to be able to change which catalogue content I am viewing
Manage my Platforms
Manage Location

Acceptance Criteria
Clicking on Manage my platforms takes the user to the My Platforms screen
Clicking on Manage Location takes the user to the Country and region screen

Feature:
  As an account holder I want to be able to change which catalogue content I am viewing
  Manage my Platforms
  Manage Location

  Scenario: As a user I want to turn off existing platform (Platforms off)
    Given user is on the "About me/Profile" page
    When user click the "wallet" button
    Then "WALLET" page must display
    Then user should see the total price of the subscriptions
    When user click the "MY PLATFORMS" button
    Then "MY PLATFORMS" screen must display
    When user click the "toggle" button off for all the platforms
    Then "Deactivating platform" modal window should display
    When user click the "NO THANKS" button
    Then user should not see any content in the carousels that relates the "platforms"

  Scenario: As a user I want to turn off existing platform (Platforms off)
    Given user is on the "About me/Profile" page
    When user click the "wallet" button
    Then "WALLET" page must display
    Then user should see the total price of the subscriptions
    When user click the "MY PLATFORMS" button
    Then "MY PLATFORMS" screen must display
    Then user click the "toggle" button off for all the platforms
    Then "Deactivating platform" modal window should display
    And user click the "YES, LOGOUT" button
    Then User should see "Platform deactivated." toast message
    Then "WALLET" page must display
    Then user should not see any content in the carousels that relates the "platforms"


  Scenario: As a user I want to turn on existing platform (Platforms on)
    Given user is on the "About me/Profile" page
    When user click the "wallet" button
    Then "WALLET" page must display
    Then user should see the total price of the subscriptions
    When user click the "MY PLATFORMS" button
    Then "MY PLATFORMS" screen must display
     When user click the "toggle" button on for all the "platforms"
    Then user should see content in the carousels that relates the "platforms"

  Scenario: As a user I want to turn off existing Location (Country and region screen)
    Given user is on the "About me/Profile" page
    When user click the "wallet" button
    Then "WALLET" page must display
    Then user should see the total price of the subscriptions
    When user click the "toggle" button off for all the platforms
    Then user should not see the Country and region screen that relates the "Location"

  Scenario: As a user I want to turn on existing Location (Country and region screen )
    Given user is on the "About me/Profile" page
    When user click the "wallet" button
    Then "WALLET" page must display
    Then user should see the total price of the subscriptions
    When user click the "toggle" button on for the "Location"
    Then user takes to the Country and region screen











