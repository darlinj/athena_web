Feature: Login
  Scenario: Log in successfully
    Given I am an Athena web user
    When I log in
    Then I am successfully logged in
    And I am associated with my company

  Scenario: Creating a user
    Given I am an admin user
    When I create a normal user
    Then I should see that normal user has been created

  Scenario: Being created as a user
    Given there is an admin user
    When a user is created by an admin
    Then the user should get a notification
    And the user should be able to confirm
    And the user should be able to login


