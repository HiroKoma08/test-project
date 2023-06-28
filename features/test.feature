Feature: Confirmation Feature
  As a user
  I want to confirm my input
  So that I can proceed to the project

  Scenario: Confirm Input
    Given I am on the confirmation page

    When I enter the name "テスト太郎"
    And I enter the email "test@test.com"
    And I enter the password "test1234"
    And I click the "プロジェクトに移動" button
    
    Then I should see the confirmation page
    And the name should be "テスト太郎"
    And the email should be "test@test.com"
