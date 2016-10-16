Feature: Posts
  Scenario: A user creates a new post with a body
    Given they are on the new post page
    When they fill in in the relavant fields
      And they click on the "Create" button
    Then a new post should be created