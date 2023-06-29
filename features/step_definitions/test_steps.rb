require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rack/test'
require_relative '../../app'
require 'sinatra/base'

World(Capybara::DSL)

def app
  Sinatra::Application
end



Given('I am on the confirmation page') do
  visit 'https://hirokoma08.github.io/test-project/'
end

When('I enter the name {string}') do |name|
  fill_in 'nameField', with: name
end

When('I enter the email {string}') do |email|
  fill_in 'emailField', with: email
end

When('I enter the password {string}') do |password|
  fill_in 'passwordField', with: password
end

When('I click the {string} button') do |button_text|
  click_button button_text
end

Then /^I should see the confirmation page$/ do
  expect(page).to have_content("入力内容確認画面")
end


Then('the name should be {string}') do |name|
  expect(page).to have_content "Name: #{name}"
end

Then('the email should be {string}') do |email|
  expect(page).to have_content "Email: #{email}"
end
