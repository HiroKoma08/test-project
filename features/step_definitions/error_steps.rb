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

Given('画面が表示されている1') do
  visit 'https://hirokoma08.github.io/test-project/'
end

When('IDが{string}のボタンを押下') do |button_text|
  click_button button_text
end

Then('名前未入力エラーが表示されている {string}') do |expected_text|
  expect(page).to have_content(expected_text)
end

Then('メールアドレス未入力エラーが表示されている {string}') do |expected_text|
  expect(page).to have_content(expected_text)
end

Then('パスワード未入力エラーが表示されている {string}') do |expected_text|
  expect(page).to have_content(expected_text)
end

