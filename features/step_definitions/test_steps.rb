# features/step_definitions/confirmation_steps.rb

Given(/^ページにアクセスする$/) do
  visit 'https://hirokoma08.github.io/test-project/'
end


When(/^名前に"([^"]*)"と入力する$/) do |name|
  fill_in 'nameField', with: 'テスト太郎'
end

When(/^メールアドレスに"([^"]*)"と入力する$/) do |email|
  fill_in 'emailField', with: 'test@test.com'
end

When(/^パスワードに"([^"]*)"と入力する$/) do |password|
  fill_in 'passwordField', with: 'test1234'
end


When(/^プロジェクトに移動するボタンをクリックする$/) do
  click_button 'プロジェクトに移動'
end

Then(/^入力内容確認画面が表示される$/) do
  expect(page).to have_content '入力内容確認画面'
end

Then(/^入力内容が"([^"]*)"となっている$/) do |name|
  expect(page).to have_content "Name: #{name}"
end

Then(/^入力メールアドレスが"([^"]*)"となっている$/) do |email|
  expect(page).to have_content "Email: #{email}"
end
