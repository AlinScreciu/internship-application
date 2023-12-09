Feature: Resume Upload

  Scenario: Successful resume upload
    Given the user is on their profile management page
    When the user uploads a valid resume file
      | File Path           |
      | /path/to/resume.pdf |
    And the user submits the resume for parsing
    Then the user should see a success message for resume upload
    And the user should be suggested to update their profile with the parsed resume data

  Scenario: Invalid file format
    Given the user is on their profile management page
    When the user uploads an invalid resume file format
      | File Path                |
      | /path/to/invalid_resume.txt |
    And the user submits the resume for parsing
    Then the user should see an error message
    And the user should be suggested to fill any remaining fields

  Scenario: Missing resume file
    Given the user is on their profile management page
    When the user does not upload a resume file
    And the user submits the resume for parsing
    Then the user should see an error message indicating the need for a resume
    And the user should be suggested to fill any remaining fields
