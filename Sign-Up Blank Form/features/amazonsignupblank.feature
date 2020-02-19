@AmazonSignUp
Feature: Amazon Sign-Up

@SignUpBlankForm
Scenario: Sign-up blank form
Given open the website
When user click on Account & Lists
Then user click on Create your Amazon account
And user does not fill in the form and click on Create Amazon account
Then sign up failed and got error message
