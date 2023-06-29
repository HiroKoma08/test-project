require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rspec/expectations'

World(RSpec::Matchers)
World(Capybara::DSL)

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'http://www.google.com'
Capybara.run_server = false
