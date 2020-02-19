@AmazonSignIn
Feature: Amazon Sign-In

@SignInSuccess
Scenario: Sign-in success
Given open the website
When user click on Account & Lists
Then user fill in the Email, click on Continue
And user fill in the Password, click on Sign-In
Then user fill in the Password again and input manually for Captcha, click on Sign-In
Then user do authentication account
Then user do anti automation challenge
Then user input OTP for authentication required
Then sign in success