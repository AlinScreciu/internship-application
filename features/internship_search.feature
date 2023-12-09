Feature: Internship Search

  Scenario: Search for internships by title
    Given the user is on the internship search page
    When the user searches for internships with the title "Software Engineer Intern"
    Then the user should see a list of matching internships
    And each internship in the list should have the title "Software Engineer Intern"

  Scenario: Search for internships by location
    Given the user is on the internship search page
    When the user searches for internships in the location "Remote"
    Then the user should see a list of matching internships
    And each internship in the list should have the location "Remote"

  Scenario: Search for internships by job type
    Given the user is on the internship search page
    When the user searches for internships with the job type "Full-Time"
    Then the user should see a list of matching internships
    And each internship in the list should have the job type "Full-Time"

  Scenario: Search for internships with multiple criteria
    Given the user is on the internship search page
    When the user searches for internships with the following criteria
      | Title            | Software Engineer Intern |
      | Location         | Remote                   |
      | Job Type         | Full-Time                 |
    Then the user should see a list of matching internships
    And each internship in the list should have the specified criteria

  Scenario: Search for internships with no matching results
    Given the user is on the internship search page
    When the user searches for internships with the title "Nonexistent Internship"
    Then the user should see a message indicating no matching results
