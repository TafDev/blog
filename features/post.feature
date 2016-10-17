Feature: Post

  Background:
    Given sample users have been created

  Scenario: Corey creates a new post with a body
    Given They have logged in as "corey@gmail.com"
    When They navigate to the "new post" page
    And They fill in the "post_title" field with "Corey's big adventure"
    And They fill in the "post_body" field with "Corey goes to the store"
    And They click "Create post"
    Then A new post is created
    And They are redirected to the "posts" page
    And The page contains "Corey goes to the store"
    And The page contains "Corey goes to the store" in ".post"