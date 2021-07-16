Web - Saving a search as a filter

Description
As an account holder when I have made a search I want to be able to choose to
save it as a filter, so that I can see the results in a carousel in future
Required fields: Filter name, at least one search parameter

Acceptance Criteria
When clicking save as an account holder and there are results, the Name the Filter modal appears
to complete filter name for displaying on the home page
When clicking save as a guest user the sign in/up pop up appears with the Feature is
only available for account holders warning message
Given that a required field has no information then the field will receive red text “required” if
the user clicks the field, leaves it empty and clicks another cell



Scenario: Home Page: [Show Filter Modal] for registered user
Given user is on web app home page
And user clicks New Filter button
Then Add Filter modal must display
When User clicks "Close" button
Then the Filter modal should not display

Scenario: Home Page: [Show Filter Modal] for unregistered user
Given user is on web app home page
And user clicks New Filter button
Then the login modal must display
When User clicks "Close" button
Then the login modal should not display