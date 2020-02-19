require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox

Given("open the website") do
    driver.navigate.to "https://www.amazon.com/"
    puts "Website amazon.com is loaded"
end

When("user click on Account & Lists") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Success/screenshot/home-amazon1.png"
    driver.find_element(:id,'nav-link-accountList').click
    puts "Account & Lists is clicked"
    sleep(2)  
end

Then("user click on Create your Amazon account") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Success/screenshot/signin-amazon1.png"
    driver.find_element(:id,'auth-create-account-link').click
    puts "Create your Amazon account Button is clicked"
    sleep(2)  
end

Then("user fill in the form and click on Create Amazon account") do
    driver.find_element(:id,"ap_customer_name").send_keys("Bombom Gledek")
    sleep(2)
    driver.find_element(:id,"ap_email").send_keys("ibomabom@gmail.com")
    sleep(2)
    driver.find_element(:id,"ap_password").send_keys("password1")
    sleep(2)
    driver.find_element(:id,"ap_password_check").send_keys("password1")
    sleep(2)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Success/screenshot/signup-form-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Fill in the form and Sign up the new account"
    sleep(2)  
end

Then("user enter OTP for verify the email address and click on Create Amazon account") do
    #enter OTP manually
    sleep(30)
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Success/screenshot/verify-email-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Enter OTP for verify the email address is done"
    sleep(2)  
end

Then("user already sign up and success") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Success/screenshot/signup-success-amazon1.png"
    puts "Sign up success"
    sleep(10)
end