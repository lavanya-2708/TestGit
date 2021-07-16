Web - Search Box

As a user I want to be able to search by a title, genre or cast member so that
I can find something to watch that isn’t on my carousels

From Subtask:
Create Search Bob form
Input field
debounced input method
validation errors
Obs: Validation errors come from the backend

Acceptance Criteria
Is not case sensitive
Text search which does not require apostrophes
When searching for a number ‘7' or 'Seven’ results will be returned for both
Joining words such as ‘The’, ‘A', 'And’ discounted in search terms - especially
if they are prefixes
Tolerance - up to 2 characters incorrect in a row.
Matching searches: All searches to come out tagged. E.g Search for ‘Freeman’
Returns: ‘Freemantle (TV)’, Morgan Freeman (Actor).
Pressing search/go will open the Text Search Results screen

Feature: Web - Search Box

As a user I want to be able to search by a title, genre or cast member so that
I can find something to watch that isn’t on my carousels

Scenario: As a user I want to be able to search by a title, genre or cast member (search title)
  Given user is on the web app home page
  When user clicks inside the search box
  Then user should be able to enter text in the search box

  Scenario: As a user I want to enter an alphanumeric text and see the list of movie titles, genre or cast members
            that matches the text (Alphanumeric text search)
    When the user enters alphanumeric characters in search box and click on Search button
    Then the system should display all possible list of movie titles, genre or cast member matching the search text

  Scenario: As a user I want to search movies, genre or cast members without entering any text
    When the user clicks the search button without entering any text in the search box
    Then user should see a toast message "please enter any text"

  Scenario: As a user I want to see the tags assigned to the resultant list of titles, genre, cast members that matches my search text
  When the user enters text in the search box
  Then user should see the list of names matching the search text with the tags (movie, TV, genre type, actor, etc) in the brackets

  Scenario: As a user I want to search movies, genre or cast members by entering one character
  When user enter any one character in search box and click on search/go key
  Then user should see the default error message is "You must include at least one positive keyword with 2 characters in a row"



  When Enter string in search box with spaces (before string, after string and in between) and verify the results
  Then Ensure that the Placeholder text gets removed on clicking the search box
  Then Ensure that the search box consists of a Placeholder text and a magnifying lens











