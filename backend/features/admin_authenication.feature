Feature: Admin Authentication
  As an admin
  I want to sign up and log in to the application
  So that I can access the admin dashboard

  Background:
    Given I am on the admin login page

  Scenario: Admin can see the login form
    Then I should see a login form with fields for "Email" and "Password"
    And I should see a "Login" button

  Scenario: Admin cannot log in with invalid credentials
    When I fill in "Email" with "invalid_admin@example.com"
    And I fill in "Password" with "wrongpassword"
    And I press "Login"
    Then I should see an error message "Invalid Email or password."
    And I should still be on the admin login page

  Scenario: Admin can log in with valid credentials
    Given an admin exists with email "admin@example.com" and password "password123"
    When I fill in "Email" with "admin@example.com"
    And I fill in "Password" with "password123"
    And I press "Login"
    Then I should be redirected to the admin dashboard
    And I should see the email "admin@example.com" on the page

  Scenario: Admin can navigate to the signup page from the login page
    When I click on the "Sign up" link
    Then I should be redirected to the admin signup page
    And I should see a signup form with fields for "Email", "Password", and "Password confirmation"

  Scenario: Admin can sign up successfully
    When I click on the "Sign up" link
    And I fill in "Email" with "newadmin@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password confirmation" with "password123"
    And I press "Sign up"
    Then I should be redirected to the admin login page
    And I should see a notice "You need to sign in or sign up before continuing."

  Scenario: Admin cannot sign up with mismatched password confirmation
    When I click on the "Sign up" link
    And I fill in "Email" with "newadmin@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password confirmation" with "differentpassword"
    And I press "Sign up"
    Then I should see an error message "Password confirmation doesn't match Password"
