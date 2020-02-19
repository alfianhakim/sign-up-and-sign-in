require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox

Given("open the website") do
    driver.navigate.to "https://www.amazon.com/"
    puts "Website amazon.com is loaded"
end

When("user click on Account & Lists") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Blank Form/screenshot/home-amazon1.png"
    driver.find_element(:id,'nav-link-accountList').click
    puts "Account & Lists is clicked"
    sleep(2)  
end

Then("user click on Create your Amazon account") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Blank Form/screenshot/signin-amazon1.png"
    driver.find_element(:id,'auth-create-account-link').click
    puts "Create your Amazon account Button is clicked"
    sleep(2)  
end

Then("user does not fill in the form and click on Create Amazon account") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Blank Form/screenshot/signup-form-amazon1.png"
    driver.find_element(:id,'a-autoid-0').click
    puts "Leave blank the form and click create amazon account button"
    sleep(2)  
end

Then("sign up failed and got error message") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-Up Blank Form/screenshot/signup-failed-amazon1.png"
    puts "Sign-up failed"
    sleep(10)
end