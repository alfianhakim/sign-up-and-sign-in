require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:firefox

Given("open the website") do
    driver.navigate.to "https://www.amazon.com/"
    puts "Website amazon.com is loaded"
end
  
When("user click on Account & Lists") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Blank Email/screenshot/home-amazon1.png"
    driver.find_element(:id,'nav-link-accountList').click
    puts "Account & Lists is clicked"
    sleep(2)    
end
  
Then("user leave blank in the Email and click on Continue") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Blank Email/screenshot/email-amazon1.png"
    driver.find_element(:id,'continue').click
    puts "Continue Button is clicked"
    sleep(2)
end
  
Then("user got error message for email") do
    driver.save_screenshot "E:/Fian/Coding/Automation/Ruby/Mekari Test/Sign-In Blank Email/screenshot/email-error-amazon1.png"
    sleep(10)
end