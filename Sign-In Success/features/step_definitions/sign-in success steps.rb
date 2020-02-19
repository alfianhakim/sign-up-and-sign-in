require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox

Given("open the website") do
    driver.navigate.to "https://www.amazon.com/"
    puts "Website amazon.com is loaded"
end
  
When("user click on Account & Lists") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/home-amazon1.png"
    driver.find_element(:id,'nav-link-accountList').click
    puts "Account & Lists is clicked"
    sleep(2)    
end
  
Then("user fill in the Email, click on Continue") do
    driver.find_element(:id,"ap_email").send_keys("ibomabom@gmail.com")
    sleep(2)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/email-amazon1.png"
    driver.find_element(:id,'continue').click
    puts "Email is filled in and Continue Button is clicked"
    sleep(2)
end
  
And("user fill in the Password, click on Sign-In") do
    driver.find_element(:id,"ap_password").send_keys("password1")
    sleep(2)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/password-amazon1.png"
    driver.find_element(:id,'auth-signin-button').click
    puts "Password is filled in and Sign-In Button is clicked"
    sleep(2)
end

Then("user fill in the Password again and input manually for Captcha, click on Sign-In") do
    #input captcha manually
    driver.find_element(:id,"ap_password").send_keys("password1")
    sleep(15)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/password-captcha-amazon1.png"
    driver.find_element(:id,'auth-signin-button').click
    puts "Password and Captcha are filled in and also Sign-In Button is clicked"
    sleep(2)
end
 
Then("user do authentication account") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/authentication-account-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Authentication required menu is accessed"
    sleep(2)
end

Then("user do anti automation challenge") do
    #input captcha manually
    sleep(15)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/automation-challenge-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Anti Automation Challenge is completed"
    sleep(2)
end

Then("user input OTP for authentication required") do
    #input OTP manually
    sleep(30)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/otp-email-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Authentication required menu is accessed"
    sleep(2)
end

Then("sign in success") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Success/screenshot/sign-in-success-amazon1.png"
    sleep(10)
end