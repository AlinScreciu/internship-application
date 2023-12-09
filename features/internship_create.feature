Feature: Internship Creation

  Scenario: Create a new internship with all details
    Given the user is on the internship creation page
    When the user provides the following internship details
      | Title                   | Software Engineer Intern |
      | Description             | Exciting opportunity for aspiring software engineers! |
      | Work Location           | Remote                   |
      | After Internship Hire   | High                      |
      | Payment Type            | Paid                      |
      | Job Type                | Full-Time                 |
      | Qualifications          | Computer Science degree, Programming skills |
      | Open Positions          | 3                         |
      | Application Deadline    | 2023-12-31               |
    And the user submits the internship creation form
    Then the user should see a success message
    And the created internship details should be displayed on the internships page

  Scenario: Create an internship with minimal details
    Given the user is on the internship creation page
    When the user provides the following internship details
      | Title                   | Marketing Intern         |
      | Work Location           | Office                   |
      | Open Positions          | 1                         |
      | Application Deadline    | 2023-11-15               |
    And the user submits the internship creation form
    Then the user should see a success message
    And the created internship details should be displayed on the internships page

  Scenario: Create an internship with invalid details
    Given the user is on the internship creation page
    When the user provides the following invalid internship details
      | Title                   |                        |
      | Work Location           | InvalidLocation          |
      | After Internship Hire   | InvalidRate              |
      | Payment Type            | InvalidPaymentType       |
      | Job Type                | InvalidJobType           |
      | Qualifications          | InvalidQualifications    |
      | Open Positions          | InvalidOpenPositions     |
      | Application Deadline    | InvalidDeadline          |
    And the user submits the internship creation form
    Then the user should see error messages for invalid details
    And the internship should not be created

  Scenario: Create an internship with missing required details
    Given the user is on the internship creation page
    When the user provides the following incomplete internship details
      | Title                   | Software Engineer Intern |
      | Work Location           | Remote                   |
      | Open Positions          | 5                         |
    And the user submits the internship creation form
    Then the user should see error messages indicating missing details
    And the internship should not be created
