@AmazonSignIn
Feature: Amazon Sign-In

@SignInBlankEmail
Scenario: Sign-in blank email
Given open the website
When user click on Account & Lists
Then user leave blank in the Email and click on Continue
Then user got error message for email