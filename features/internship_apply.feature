Feature: Internship Application with Autocompletion and Suggestions

  Scenario: Successful internship application with autocompleted fields
    Given the user is on the internship application page
    And the user's profile is populated with relevant information
      | First Name | John      |
      | Last Name  | Doe       |
      | Email      | john@example.com |
      | University | Example University |
      | Major      | Computer Science |
      | Graduation Year | 2023    |
    When the user submits the application
    Then the user should see a success message
    And the application status should be "Under Review"

  Scenario: Incomplete internship application with autocompleted fields
    Given the user is on the internship application page
    And the user's profile is partially populated with relevant information
      | First Name | Mary      |
      | Last Name  |           |
      | Email      | mary@example.com |
      | University | Example University |
    When the user submits the application
    Then the user should see a suggestion to fill any remaining fields
    And the application status should be "Incomplete"
