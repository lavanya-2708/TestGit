
########################################

Feature: Bob Show Home Page

    Both registered and guest user must have acess, easily navigation,
     and interactions on Home Page items,
    


    Scenario Outline:  Home page for registered user
        Given user is on web app home page
        Then navbar items must be displayed
    #     # Given user click login button
    #     # Then login pop up must be displayed
    #     # Given user is signing with valid <username> and <password>
    #     # # Then user must be logged in
        Given user is on <navbar item2> page and clicks <navbar item1>
        Then user must be redirected back to <navbar item1>
        Given user is on <navbar item3> page and clicks <navbar item1>
        Then user must be redirected back to <navbar item1>
        # Given user on <navbar item4> page and clicks <navbar item1>
        # Then user must be redirected to <navbar item1>
        
        Examples:
            |  navbar item1 || navbar item2 || navbar item3  || navbar item4  | |username||password|
            |   Home        ||   Search     ||    Playlist  ||   Profile      | |username||password|

    Scenario: Home Page: [Create New Filter] for logged-in user
        Given user is on web app home page
        And user clicks New Filter button
        Then Add Filter modal must display
        # Given user has created a new filter
        # Then “Filter Created“ alert must display
        # Then “Filter Name“ must display in the first section of the carousel

    Scenario: Home Page: [Edit existing Filter] for Signed-in user
        # Actual test case
        #Given user is successfully logged in

        # Just for test demo 
        Given user is on web app home page
        And user click Edit button on existing filter
        Then Edit Filter modal must display

        # Just for test demo 
        # Given user clicks any title card from displayed carousel
        # Then user must be redirected to card title page
        # Given user clicks Watchlist button
        # Then  Watchlist modal must be displayed
        # Given user select category for the watchlist
        # Given user populates 
        # And user clicks Add 

        # Given user edit  “Filter Name” input text field
        # And user click “Save Filter“ button
        # Then “Filter Edited“ alert must display
        # Then “Filter Name“ must display in the first section of the carousel

    # Scenario: Home page: [Delete existing Filter] for Signed-in user
    #     Given user is successfully logged in
    #     And user click Edit button on existing filter
    #     Then Edit Filter modal must display
    #     Given  user click “Delete Filter“ button
    #     Then Filter must be deleted and “Filter Name“ must not display in the first section of the carousel

    # Scenario: Home Page: [Create New Filter] for unregistered user
    #     Given user is successfully logged in
    #     And user click New Filter button
    #     Then Login Modal must display

    # Scenario Outline:Home page for unregistered user.
    #     Given user is on web app home page
    #     Then navbar items must be displayed
    #     Given user navigates to any navbar “items“ page
    #     Then “home” button must persist on every “items“ page.
    #     Given the user clicked "home" button
    #     Then user must be redirected back to "home" page
    #    Examples:
    #     |  navbar item1 || navbar item2 || navbar item3  || navbar item4  | 
    #     |   Home        ||   Search     ||    Playlist  ||   Profile      |

################################################################################


#https://rixxo-hq.atlassian.net/browse/BOB-4882 
# https://rixxo-hq.atlassian.net/browse/BOB-5156

@BOB-
Feature: Test set creation for: Web - Connect with BoB Users
Scenario: Registered user adding facebook friends with BOB account (Approve)
  When user is in "ACCOUNT SETUP" page
  Then the user clicks on "Connect with Facebook"
  Then the "DATA Sharing Permission" pop up is displayed
  And user click the "YES PROCEED SHARING MY DATA" button
  Then user should see a list of BOB facebook friends with automatically selected all
  When any BOB user is clicked from the list 
  Then the selected BOB user should unselect from the invite

  And user click the "invite" button
  Then the invite should sent to the selected friends on facebook
  And the facebook window closes
  And the Friend Invitation modal is dismissed
  Then user should see "YTC" toast message
  
Scenario: Registered user adding facebook friends with BOB account (Deny)
  GWhen user is in "ACCOUNT SETUP" page
  Then the user clicks on "Connect with Facebook"
  Then the "DATA Sharing Permission" pop up is displayed
  And user click the "NO THANKS,NOT INTO TAHT" button
  Then User should see "you do not have permissions" toast message
  Then the "DATA Sharing Permission" pop up should dismissed



# https://rixxo-hq.atlassian.net/browse/BOB-4933
# https://rixxo-hq.atlassian.net/browse/BOB-5176


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

 Scenario: As a user I would like to sign up to BoB using my GOOGLE account 
        Given user is on the web app home page
        And user click the Login button
        Then "LOGIN TO CONTINUE" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "GOOGLE" button
         Then user direct to the GOOGLE page
         When user type valid credentials 
         When user click on "Login" button
         Then "Home" page must display

 Scenario: As a user I would like to sign up to BoB using my Amazon account 
        Given user is on the web app home page
        And user click the Login button
        Then "LOGIN TO CONTINUE" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "AMAZON" button
         Then user direct to the Amazon page
         When user type valid credentials 
         When user click on "Login" button
         Then "Home" page must display

 Scenario: As a user I would like to sign up to BoB using my APPLE account 
        Given user is on the web app home page
        And user click the Login button
        Then "LOGIN TO CONTINUE" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "APPLE" button
         Then user direct to the APPLE page
         When user type valid credentials 
         When user click on "Login" button
         Then "Home" page must display






##############################################################
# https://rixxo-hq.atlassian.net/browse/BOB-5177
# https://rixxo-hq.atlassian.net/browse/BOB-4926


#webvamsi555@gmail.com
#Webvamsi123

Feature: Web - Login via BoB account
Scenario: As a user I want to be able to log in to my account using (Valid email account) registered user via BoB account
    Given user is on the web app home page
    And user click the "LOG IN" button
    Then "LOG IN" page must display
    When user enters valid email to the "Email your email or Phone Number" edit field
    And user type the valid password to the "Enter your password" edit field
    And user click the "LOG IN" button
    Then "HOME" page must display


Scenario: As a user I want to be able to log in to my account using (Valid mobile account) registered user via BoB account
    Given user is on the web app home page
    And user click the "LOG IN" button
    Then "LOG IN" page must display
    When user enters valid mobile number to the "Email your email or Phone Number" edit field
    And user type the valid password to the "Enter your password" edit field
    And user click the "LOG IN" button
    Then "HOME" page must display


Scenario: When invalid email/mobile number and/or password are supplied the Email and/or password incorrect warning message is displayed
        Given user is on the web app home page
        And user click the "LOG IN" button
        Then "LOG IN" page must display
        And user click the "LOG IN" button
        Then User should see "A valid email or phone number must be provided." toast message
        And user enters invalid email to the "Email your email or Phone Number" edit field
        And user click the "LOG IN" button
        Then User should see "A valid email address must be provided." toast message
        And user enters invalid mobile number to the "Email your email or Phone Number" edit field
        And user click the "LOG IN" button
        Then User should see "A valid email or phone number must be provided." toast message

        When user enters valid email to the "Email your email or Phone Number" edit field
        And user click the "LOG IN" button
        Then User should see "TBA" toast message

        When user type the valid one character to the "Enter your Password" edit field
        And user click the "LOG IN" button
        Then User should see "Incorrect username or password." toast message

        When user enters valid mobile number to the "Email your email or Phone Number" edit field
        And user type the valid one character to the "Enter your Password" edit field
        Then User should see "Incorrect username or password." toast message


Scenario: Three failed attempts to login will create a 30 minute time out on the account and display the Account blocked warning message
        Given user is on the web app home page
        And user click the "LOG IN" button
        Then "LOG IN" page must display
        When user enters valid email to the "Email your email or Phone Number" edit field
        And user type the invalid password to the "Enter your Password" edit field
        And user click the "LOG IN" button
        Then User should see "Incorrect username or password." toast message
        And user click the "LOG IN" button
        Then User should see "Incorrect username or password." toast message
        And user click the "LOG IN" button
        Then User should see "Incorrect username or password." toast message
        And user click the "LOG IN" button
        Then User should see "Password attempts exceeded" toast message
        And user type the valid password to the "Enter your Password" edit field
        And user click the "LOG IN" button
        Then user should see "TBA" toast message








####################################################################################################################


# https://rixxo-hq.atlassian.net/browse/BOB-5182
# https://rixxo-hq.atlassian.net/browse/BOB-4922
also for:

# https://rixxo-hq.atlassian.net/browse/BOB-4923 Story
# https://rixxo-hq.atlassian.net/browse/BOB-5180 Set

Feature: Onboarding & Login Log in : Forget password 

Scenario: As a user when I click on reset password I want to be taken to a page to enter a new password (Invalid/blank email)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        When user click the "SEND CODE" button
        Then User should see "TBA" toast messages
        And user enter invalid alphanumneric characters to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button
        Then user should see "A valid email or phone number must be provided." toast message
 

Scenario: As a user when I click on reset password I want to be taken to a page to enter a new password (Invalid/blank mobile)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        When user click the "SEND CODE" button
        Then User should see "" toast messages
        And user enter invalid mobile number to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button
        Then user should see "A valid email or phone number must be provided." toast message
 

Scenario: As a user I want to reset password for my email (valid email,but not a registered user into the system)       
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid email to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button
        Then user should see "Could not find a user that matches that email address or phone number." toast message

Scenario: As a user I want to reset password for my mobile (valid mobile,but not a registered user into the system)       
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid phone to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button
        Then user should see "Could not find a user that matches that email address or phone number." toast message        

Scenario: As a user I want to reset password for my mobile (valid mobile,already user registered into the system)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid "sss@ssss" phone to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button
        
        Then user should see "We have sent you a 6 digit code to your email or phone number, please enter it below." toast message
        Then "RESET PASSWORD" page must display
        Then user should receive a 6 digit code to mobile

        And user click the "RESET PASSWORD" button
        Then user should see "Confirmation code cannot be empty" toast message 

        And user enter invalid 6 digit code to the "Code" edit field
        And user click the "RESET PASSWORD" button
        Then user should see "Password cannot be empty" toast message 

        And user enter valid 6 digit code to the "Code" edit field
        And user click the "RESET PASSWORD" button
        Then user should see "Password cannot be empty" toast message 
    
        And user enter invalid one character password to the "New Password" edit field
        Then user should see "1 validation error detected: Value at 'password' failed to satisfy constraint: Member must satisfy regular expression pattern: ^[\S]+.*[\S]+$" toast messages 
        And user enter valid password to the "New Password" edit field
        And user click the "RESET PASSWORD" button
        Then user should successfully logged into their account
        Then "HOME" page must display


Scenario: As a user I want to reset password for my email (valid email, already user registered into the system)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid  email to the "Email or Phone Number" edit field
        And user click the "SEND CODE" button

        Then user should see "We have sent you a 6 digit code to your email or phone number, please enter it below." toast message
        Then "RESET PASSWORD" page must display
        Then user should receive a 6 digit code to mobile

        And user click the "RESET PASSWORD" button
        Then user should see "Confirmation code cannot be empty" toast message 

        And user enter invalid 6 digit code to the "Code" edit field
        And user click the "RESET PASSWORD" button
        Then user should see "Password cannot be empty" toast message 

        And user enter valid 6 digit code to the "Code" edit field
        And user click the "RESET PASSWORD" button
        Then user should see "Password cannot be empty" toast message 
         
        And user enter invalid one character password to the "New Password" edit field
        Then user should see "1 validation error detected: Value at 'password' failed to satisfy constraint: Member must satisfy regular expression pattern: ^[\S]+.*[\S]+$" toast messages 
        And user enter valid password to the "New Password" edit field
        And user click the "RESET PASSWORD" button
        Then user should successfully logged into their account
        Then "HOME" page must display

 Scenario: As a user I want to reset password for my mobile using Resend Code(valid mobile,already user registered into the system)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid phone to the "Email or Phone Number" edit field
        And user click the "RESEND CODE" button
        
        Then user should see "We have sent you a 6 digit code to your email or phone number, please enter it below." toast message
        Then user should receive a new 6 digit code to mobile

        And user click the "RESET PASSWORD" button
        Then user should see "Confirmation code cannot be empty" toast message 

        And user enter old 6 digit code to the "Code" edit field
        And user enter valid password to the "New Password" edit field
        And user click the "RESET PASSWORD" button
        Then user should see "YTC" toast message

        And user enter new valid 6 digit code to the "Code" edit field
        And user enter valid password to the "New Password" edit field
        And user click the "RESET PASSWORD" button
        Then user should successfully logged into their account
        Then "HOME" page must display
         
      Scenario: As a user I want to see exceed limit for my forget password (registered user)
        Given user is on the web app home page
        And user click the "LOG IN" button
        And user click the "FORGOT YOUR PASSWORD?" button
        Then "FORGOT YOUR PASSWORD?" page must display
        And user enter valid phone to the "Email or Phone Number" edit field
        And user click the "RESEND CODE" button 
        And User repear the resend code function "10" times
        And user enter valid phone to the "Email or Phone Number" edit field
        Then user should see "Attempt limit exceeded, please try after some time." toast message
        

#webvamsi555@gmail.com
#07572233330
      
# Tester12345@

Could not find a user that matches that email address or phone number.


# We have sent you a 6 digit code to your email or phone number, please enter it below




##############################################################
# https://rixxo-hq.atlassian.net/browse/BOB-4875
# https://rixxo-hq.atlassian.net/browse/BOB-5171
Feature: Already has account socialmedia sign in

Scenario: User already has an BOB account with (Facebook)
        Given user is on the "Sign Up" page
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "FACEBOOK" button
         Then user direct to the FACEBOOK page
         And user type Facebook credentials 
         When user click on "sign in" button
         Then Sign in was successful 
         Then "Home" page should display

Scenario: User already has an BOB account with (Google)
        Given user is on the "Sign Up" page
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "GOOGLE" button
         Then user direct to the GOOGLE page
         And user type GOOGLE credentials 
         When user click on "sign in" button
         Then Sign in was successful 
         Then "Home" page should display

Scenario: User already has an BOB account with (Amazon)
        Given user is on the "Sign Up" page
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "AMAZON" button
         Then user direct to the AMAZON page
         And user type AMAZON credentials 
         When user click on "sign in" button
         Then Sign in was successful 
         Then "Home" page should display

Scenario: User already has an BOB account with (Apple)
        Given user is on the "Sign Up" page
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "APPLE" button
         Then user direct to the APPLE page
         And user type APPLE credentials 
         When user click on "sign in" button
         Then Sign in was successful 
         Then "Home" page should display



#######################################################

# https://rixxo-hq.atlassian.net/browse/BOB-5171
# https://rixxo-hq.atlassian.net/browse/BOB-4919 
Feature: Login security

Scenario:  As a user I want to ensure any passwords I use are secure (email/mobile)
        Given user is on the web app home page
        And user click the "Create An Account" button
        Then "Sign up" page must display
        And user enters valid email to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "Please ensure all fields are filled in." toast message
        When user type the valid one character to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid one character to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then User should see "1 validation error detected: Value at 'password' failed to satisfy constraint: Member must satisfy regular expression pattern: ^[\S]+.*[\S]+$" toast message
        When user type the short invalid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the short invalid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then user should see "Password did not conform with policy: Password not long enough" toast message
        When user type the valid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then "Verify Account" page must display



#################################################


#SAT
Feature: AboutME
As a user I would like to add more information about myself and set;

# https://rixxo-hq.atlassian.net/browse/BOB-4900
 # https://rixxo-hq.atlassian.net/browse/BOB-5166
    Scenario: As a user I would like to change my avatar image
        Given user is on the "About me/Profile" page
        Then default image is displayed 
        When user click the "Edit image" button
        Then User should be able to select image from local computer to update
        And all sizes of images should be able to accept 
        When user upload an image 
        Then user should see it was resized and display window box 
        When user click the "save" button
        Then new image should be displayed 

    Scenario: As a user I would like to add my name (registered user from Social media)
        Given user is a registered user via social media
        And user is on the "About me/Profile" page
        Then the name should be auto populated from social media 
        When user type a valid name to the "edit field"
        When user click the "save" button
        Then user should be able to see the name edit changes


Scenario: As a user I would like to add my name (registered user valid name)
        Given user is on the "About me/Profile" page
        When user type a valid name to the "edit field" 
        When user click the "save" button
        Then user should be able to see the name edit changes

Scenario: As a user I would like to add my name (registered user existing name)
        Given user is on the "About me/Profile" page
        When user type a existing the "edit field" 
        When user click the "save" button
        Then user should see "Name already exist" toast message
        When user type a valid name to the "edit field" 
        When user click the "save" button
        Then user should be able to see the name edit changes


        TO UPLOAD>>>>>>>>>>>>>>>>>>>>>

Scenario: As a user I would like to add my platforms by subscription(my platforms  on/off)
        Given user is on the "About me/Profile" page
        When user click the "wallet" button
        Then "WALLET" page must display
        And I shoul be able to see defailt subscribed list
        Then user should see the total price of the subscriptions
        When user turn off toggle for the first platform from the list
        Then "Deactivating platform" modal window should display
        When user click the "NO THANKS" button
        Then the first pltform should still show 
        When user turn off toggle for the first platform in the list
        And user click the "YES, LOGOUT" button 
        Then User should see "Platform deavtivated." toast message
        Then "WALLET" page must display
        And the first pltform should not show

Scenario: As a user I would like to search for my required platform (search platforms)
        Given user is on the "About me/Profile" page
        When user click the "wallet" button
        Then "WALLET" page must display
        When user type valid platform name to the "Search Platforms" edit field
        Then the desired platform should show in the list
        When user select the platform from the list 
        Then desired platform should add to the my platforms list 

Scenario: As a user I would like to see all platforms so that i can turn on/off (all platforms list)
        Given user is on the "About me/Profile" page
        When user click the "wallet" button
        Then "WALLET" page must display
        When user click the "ALL PLATFORMS" button
        Then "ALL PLATFORMS" page must display
        When user turn on toggle for the last platform in the list 
        And user click the "MY PLATFORMS" button
        Then the last selected platform should display in the list
         


#SAT
Feature: SignUp FACEBOOK
   As a user I would like to sign up to BoB using my Facebook account
# https://rixxo-hq.atlassian.net/browse/BOB-4888
 # https://rixxo-hq.atlassian.net/browse/BOB-5158
    Scenario: As a user I would like to sign up to BoB using my Facebook account 
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "FACEBOOK" button
         Then user direct to the FACEBOOK page
         And user type Facebook credentials 
         When user selet No to any required permission fields
         And user click on "sign in" button
         Then user must see "Social Network Insufficient Permissions Pop Up" window
         When Sign in was unsuccessful 
         Then user must be able to dismiss the agrement 
         And "Sign up" page should display
         And user click the "FACEBOOK" button
         Then user direct to the FACEBOOK page
         And user type Facebook credentials  
         When user click on "sign in" button
         When user selet Yes to any required permission fields
         When user click on "sign in" button
         Then "onboarding about me page" page must display


# SAT
@REQ_BOB-4879
Feature: SignUp #SAT 

    As a user i should be able to sign Up in different methods
# https://rixxo-hq.atlassian.net/browse/BOB-5160
# https://rixxo-hq.atlassian.net/browse/BOB-4879
# https://rixxo-hq.atlassian.net/browse/BOB-5808

Scenario:  As a user I would like to be able to sign up via email (Un registered, valid/invalid email)
        Given user is on the web app home page
        And user click the "Create An Account" button
        Then "Sign up" page must display
        And user enters invalid email to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "A valid email address must be provided." toast message
        And user enters valid email to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "Please ensure all fields are filled in." toast message
        When user type the valid one character to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid one character to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then User should see "1 validation error detected: Value at 'password' failed to satisfy constraint: Member must satisfy regular expression pattern: ^[\S]+.*[\S]+$" toast message
        When user type the short invalid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the short invalid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then user should see "Password did not conform with policy: Password not long enough" toast message
        When user type the valid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid password to the "Re-enter Password" edit field

        And user type existing email to the "Email or PhoneNumber" edit field
        And user click on "sign up" button
        Then user should see "An account with the given email already exists." toast message

        And user type existing mobile number to the "Email or PhoneNumber" edit field
        And user click on "sign up" button
        Then user should see "An account with the given email already exists." toast message

        When user enters valid email to the "Email or PhoneNumber" edit field
        And user click on "sign up" button
        Then "Verify Account" page must display
        Then user should see "Yesssss! You’ve joined BoB! I think you’re going to love it here!" toast message
        Then the valid email must be prepopulated 
        Then user should not be able to edit the prepopulated number
        And user should receive Code to the given Email
        When user click on "Confirm" button
        Then User should see "Confirmation code cannot be empty" toast message
        When user type the invalid code to the "Enter your code" edit field
        And user click on "Confirm" button
        Then User should see "Invalid verification code provided, please try again." toast message
        When user type the valid code to the "Enter your code" edit field
        And user click on "Confirm" button
        Then User should see " You have successfully completed your sign-up verification." toast message


# SAT 
# https://rixxo-hq.atlassian.net/browse/BOB-4875 ()TODO ????? KRIS
#https://rixxo-hq.atlassian.net/browse/BOB-5164 ??????

    Scenario: As a user with an account I would like to try to Social sign up for an account (already exist)
    Scenario: As a user I would like to sign up to BoB using my Amazon account 
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "AMAZON" button
         Then user direct to the Amazon page
         When user type existing social media credentials 
         When user click on "sign in" button
         Then "change network and try password again" page must display
         And user type valid credentials 
         When user click on "sign in" button
         Then "profile" page must display

####################################################################################################

Feature: SignUp
    As a user i should be able to sign Up in different methods
# https://rixxo-hq.atlassian.net/browse/BOB-5805
    Scenario: As a user I want to opt into certain types of messages
        Given user is on the "Sign up" page
        When user typed valid credentials to editbox
        When user didnt opt for any check boxes
        Then the "Sign up" button should be disabled 
        When user opted "News Letter"
        Then the "News Letter" checkbox should be enabled 
        Then the "Sign up" button should be disabled 
        When user opted "Sharing my data"
        Then the "Sharing my data" checkbox should be enabled 
        Then the "Sign up" button should be disabled
        When user opted "Terms and conditions"
        Then the "Terms and conditions" checkbox should be enabled 
        Then the "Sign up" button should be enabled
        When user click on "sign up" button
        Then "Verify Account" page must display


##########################################################################

Feature: SignUp
    As a user i should be able to sign Up in different methods
# https://rixxo-hq.atlassian.net/browse/BOB-5169
    Scenario: As a user I would like to sign up to BoB using my Amazon account 
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "AMAZON" button
         Then user direct to the Amazon page
         When user type wrong credentials 
         When user click on "sign in" button
         Then "change network and try password again" page must display
         And user type valid credentials 
         When user click on "sign in" button
         Then "profile" page must display


Feature: SignUp
    As a user i should be able to sign Up in different methods
# https://rixxo-hq.atlassian.net/browse/BOB-5803
    Scenario: As a user I would like to sign up to BoB using my Apple account 
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "APPLE" button
         Then user direct to the Apple page
         When user type wrong credentials 
         When user click on "sign in" button
         Then "change network and try password again" page must display
         And user type valid credentials 
         When user click on "sign in" button
         Then "profile" page must display

# https://rixxo-hq.atlassian.net/browse/BOB-5804

    Scenario: As a user I would like to sign up to BoB using my Google account 
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        Then user must see below login options
            | FACEBOOK  |
            | GOOGLE    |
            | AMAZON    |
            | APPLE     |
         And user click the "Google" button
         Then user direct to the Google page
         When user type wrong credentials 
         When user click on "sign in" button
         Then "change network and try password again" page must display
         And user type valid credentials 
         When user click on "sign in" button
         Then "profile" page must display





# ###########################################################################
# https://rixxo-hq.atlassian.net/browse/BOB-4870


Feature: Action bar
    As a user i should be able use Action bar features
    
    Scenario:  Action bar: seen it (registered user)
        Given user is on the "Title" page
        And user click the "Seen it" button
        Then the "Seen it" button should enabled

    Scenario:  Action bar: seen it (unregistered user)
        Given user is on the "Title" page
        And user click the "Seen it" button
        Then "Login" page must display
        And user close login page 
        Then "Seen it" button should not enabled
        When user click the "Seen it" button
        And user login with valid credentials
        Then the "Seen it" button should enabled
        


Marked as seen it by ola:
Feature: Seen it    
  User can mark a title as seen
  
  
  Scenario: Registered user must be able to mark a title as seen 
    Given user is on web app home page
    And user clicks on a "title" card from the carousel sections
    Then user must be redirected to the card title page
    And "What’s It About", "Play Here" sections must be displayed
    And Cast section must be displayed
    Given user clicks Seen It button from the title action bar
    Then Seen It icon in the "title" action bar must be highlighted in coral
    Given the "title" card appears on homepage
    Then Seen It icon must be displayed on "title" card
    When "title" appears on any "playlist"
    Then Seen It icon must be displayed on "title" card
 
  Scenario: Registered user must be able to unmark a title as seen 
    Given user is on web app home page
    And user clicks on any title card from the carousel sections
    Then user must be redirected to the card title page
    And "What’s It About", "Play Here" sections must be displayed
    And Cast section must be displayed
    Given user clicks Seen It button from the title action bar
    Then Seen It icon in the title action bar must be highlighted in coral
    Given user clicks Seen It button from the title action bar
    Then Seen It icon in the title action bar must not be highlighted in coral
    Given the "title" card appears on homepage
    Then Seen It icon must not be displayed on "title" card
    When "title" appears on any "playlist"
    Then Seen It icon must not be displayed on "title" card

 Scenario: Unregistered user must not be able to mark a title as seen
   Given user is on web app home page
   And user clicks on any title card from the carousel sections
   Then user must be redirected to the card title page
   And "What’s It About", "Play Here" sections must be displayed
   And Cast section must be displayed
   Given user clicks Seen It button from the title action bar
   Then Login modal must be displayed
   


# ###########################################################################
# https://rixxo-hq.atlassian.net/browse/BOB-4878
Feature: SignUp
    As a user i should be able to sign Up in different methods
    
    Scenario:  Web Sign up with Mobile number (unregistered verify 11 digits)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters valid 11digit mobile number to the "Email or PhoneNumber" edit field
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

    Scenario:  Web Sign up with existing registered Mobile number (registered)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters registered 11digit mobile number to the "Email or PhoneNumber" edit field
        When user click on "sign up" button
        Then User should see "Please ensure all fields are filled in." toast message
        When user type the valid password to the "Password" edit field
        And user click on "sign up" button
        Then User should see "The password input must match the password confirmation input." toast message
        When user type the valid password to the "Re-enter Password" edit field
        And user click on "sign up" button
        Then User should see "An account with the given phone number already exists." toast message

    
    Scenario:  Web Sign up with Mobile number (resend code)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters valid 11digit mobile number to the "Email or PhoneNumber" edit field
        And user type the valid password to the "Password" edit field
        And user click on "sign up" button
        Then "Verify Account" page must display
        Then the valid 11digit mobile number must be prepopulated
        When user click on "Resend Code" button
        Then User should see "And awayyyyyyyyy - message sent!" toast message
        And user should receive SMS Code to the mobile number
        When user type the valid code to the "Enter your code" edit field
        And user click on "Confirm" button
        Then User should see " You have successfully completed your sign-up verification." toast message

    Scenario:  Web Sign up with Mobile number (unregistered verify country code +44)
        Given user is on the web app home page
        And user click the Login button
        Then "Sign in" page must display
        When click on "New To Bob? SignUp!" button
        Then "Sign up" page must display
        And user enters valid 12digit mobile number to the "Email or PhoneNumber" edit field
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
        Then the valid 12digit mobile number must be prepopulated 
        And user should receive SMS Code to the mobile number
        Then user should not be able to edit the prepopulated number
        When user click on "Confirm" button
        Then User should see "Confirmation code cannot be empty" toast message
        When user type the valid code to the "Enter your code" edit field
        And user click on "Confirm" button
        Then User should see " You have successfully completed your sign-up verification." toast message

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



###########################################################################
@REQ_@BOB-4847
  # https://rixxo-hq.atlassian.net/browse/BOB-5140
Feature: Bob Show Home Page

  Both registered and guest user must have acess, easily navigation,
  and interactions on Home Page items,

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





    ==============

