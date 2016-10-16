Feature: Posts
  Scenario: A user creates a new post with a body Scenario:
    Given a user has signed up
      And they are on the new post page
    When they fill in in the relavant fields
      And they click on the "Create" button
    Then a new post should be created