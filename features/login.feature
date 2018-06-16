Feature: Login
  Scenario: Log in successfully
    Given I am an Athena web user
    When I log in
    Then I am successfully logged in
    And I am associated with my company

  Scenario: Inviting a new user
    Given I am an admin user
    When I invite a new user to use the website
    Then the new user should get an email invitation
    And should be able to set their password
    And should be logged in

