Feature: Login
  Scenario: Log in successfully
    Given I am an Athena web user
    When I log in
    Then I am successfully logged in
    And I am associated with my company


