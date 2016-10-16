Feature: User
  Scenario: A user views all their posts
    Given a user has signed up
      And  they have create some posts
    When they visit their posts index page
    Then they should see their posts
