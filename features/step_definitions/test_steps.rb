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

Given('画面が表示されている2') do
  visit 'https://hirokoma08.github.io/test-project/'
end

When('名前を入力 {string}') do |name|
  fill_in 'nameField', with: name
end

When('メールアドレスを入力 {string}') do |email|
  fill_in 'emailField', with: email
end

When('パスワードを入力 {string}') do |password|
  fill_in 'passwordField', with: password
end

When('IDが{string}のボタンを押下') do |button_text|
  click_button button_text
end

Then(/^確認画面に遷移する$/) do
  expect(page).to have_content("入力内容確認画面")
end

Then('名前が表示されている {string}') do |name|
  expect(page).to have_content "Name: #{name}"
end

Then('メールアドレスが表示されている {string}') do |email|
  expect(page).to have_content "Email: #{email}"
end
