"Section Community: Community Home


Description
As a user I would like to be able to search for my friends so that I can more easily connect with them

Acceptance Criteria
Search data implemented on Community page
mock data"

  Feature: "Section Community: Community Home

    Scenario: As a user I want to connect my friends through community search
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are matching friends with the searched text
      Then user should see matching friends list to follow

    Scenario: As a user I want to connect my friends through community search (Negative Scenario)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are no matching friends with the searched text
      Then user should see "NO FRIENDS FOUND" message displayed


    Scenario: As a user I want to connect my friends through community search(Follow request to a friend)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are matching friends with the searched text
      Then user should see matching friends list to follow
      When user clicks on "Follow" button for a specific friend
      Then user's friend should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"


    Scenario: As a user i want to connect my friends through community search(Friend Accepted Follow request)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are matching friends with the searched text
      Then user should see matching friends list to follow
      When user clicks on "Follow" button for a specific friend
      Then user's friend should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"
      When user's friend accepts the request
      Then user should see the newly accepted friend in the friend's list of the "COMMUNITY" home page


    Scenario: As a user i want to connect my friends through community search(Friend Declined Follow request)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are matching friends with the searched text
      Then user should see matching friends list to follow
      When user clicks on "Follow" button for a specific friend
      Then user's friend should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"
      When user's friend declines the request
      Then user shouldn't see the declined friend in the friend's list of the "COMMUNITY" home page


    Scenario: As a user i want to connect my friends through community search(Unfollow a friend)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with "UNFOLLOW" button against each friend
      When user clicks on "Unfollow" button for a specific friend
      Then user shouldn't see that specific friend in the friend's list of the "COMMUNITY" home page


    Scenario: As a user i want to connect my friends through community search(Follow requests for Multiple friends)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with "UNFOLLOW" button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are multiple matching friends with the searched text
      Then user should see multiple matching friends list to follow
      When user clicks on "Follow" button for multiple friends
      Then all requested user's friends should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"


    Scenario: As a user i want to connect my friends through community search(Multiple friends accepted Follow request)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are multiple matching friends with the searched text
      Then user should see multiple matching friends list to follow
      When user clicks on "Follow" button for multiple friends
      Then all requested user's friends should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"
      When each user's friend accepts the request
      Then user should see the newly accepted friend in the friend's list of the "COMMUNITY" home page

    Scenario: As a user i want to connect my friends through community search(Multiple friends Declined Follow requests)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user types "Travis" in search box and clicks enter
      And if there are matching friends with the searched text
      Then user should see matching friends list to follow
      When user clicks on "Follow" button for multiple friends
      Then all requested user's friends should see Follow request under the "PENDING REQUESTS" in the "NOTIFICATIONS"
      When any user's friend declines the request
      Then user shouldn't see those declined friends in the friend's list of the "COMMUNITY" home page


    Scenario: As a user i want to connect my friends through community search(Follow requests for Multiple friends)
      Given user is on the web app home page
      When user clicks on "profile" button
      Then "profile" page must display
      When user clicks on "My Connections" link
      Then "COMMUNITY" home page must display
      And user should see "INVITE FRIENDS" button
      And user should also see "NOTIFICATIONS" AND "PENDING REQUESTS" sections
      And user should also see the list of Followed friends with UNFOLLOW button against each friend
      When user clicks on "Unfollow" button for multiple friends
      Then user shouldn't see those specific friends in the friend's list of the "COMMUNITY" home page








