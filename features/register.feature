Feature: User Account Creation
  As a new user
  I want to create an account
  So that I can access the system

  Scenario: Successful account creation
    Given the user is on the registration page
    When the user enters valid registration details
      | First Name | John      |
      | Last Name  | Doe       |
      | Email      | john@example.com |
      | Password   | Password123   |
    And the user submits the registration form
    Then the user should see a confirmation message
    And the user should be logged in

  Scenario: Account creation with existing email
    Given the user is on the registration page
    When the user enters registration details with an existing email
      | First Name | Jane      |
      | Last Name  | Smith     |
      | Email      | john@example.com |
      | Password   | NewPassword   |
    And the user submits the registration form
    Then the user should see an error message indicating the email is already in use

  Scenario: Incomplete account creation
    Given the user is on the registration page
    When the user enters incomplete registration details
      | First Name | Mary      |
      | Last Name  |           |
      | Email      | mary@example.com |
      | Password   |           |
    And the user submits the registration form
    Then the user should see error messages indicating the required fields

  Scenario: Password strength validation
    Given the user is on the registration page
    When the user enters a weak password
      | First Name | Robert    |
      | Last Name  | Johnson   |
      | Email      | robert@example.com |
      | Password   | weak      |
    And the user submits the registration form
    Then the user should see an error message indicating the password strength requirements

