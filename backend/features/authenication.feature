Feature: User Login
  As a registered user
  I want to log in to the application
  So that I can access my account


  Scenario: Users access to application
    Given I am on the homepage
    When I click on the "Login" link
    Then I should be redirected to the login page
    And I should see the login form with field for "Email" and "Password"

  Scenario: User cannot log in with non-existent account
    Given I am on the login page
    When I fill in "Email" with "nonexistent@example.com""
    And I fill in "Password" with "password123"
    And I press "Log in" button
    Then I should see message "Account doesn't exist"
    And I should still be on the login page


  Scenario: User can navigate from login page to signup page
    Given I am on the login page
    When I click on the "Sign up" link
    Then I should be redirected to the signup page
    And I should see the signup form with fields for "Email", "Password", and "Password confirmation"

  Scenario: User can be backed to login page when signed up successful
  	Given I am on the signup page
  	And I fill in "Email" with "test@example.com"
  	And I fill in "Password" with "password123"
  	And I fill in "Password confirmation" with "password123"
  	And I press the "Sign up" button
  	Then I should be redirected to the login page
  	And I should see the login form with fields for "Email" and "Password"

  Scenario: User logs in with newly registered account
    Given I am on the login page
    When I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I press the "Log in" button
    Then I should be redirected to the homepage
    And I should see email account in homepage