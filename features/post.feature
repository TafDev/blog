Feature: Post
  As a logged in user, i should be able to create new posts.
  As a logged in user, i should be able to see posts i created.
  As a logged in user, i should be able to edit my posts.
  As a logged in user, i should be able to delete my posts.
  
  Background:
    Given sample users have been created
    Given They have logged in as "corey@gmail.com"
    Given sample posts have been created

  Scenario: Corey creates a new post with a body
    When They navigate to the "new post" page
    And They fill in the "post_title" field with "Corey's big adventure"
    And They fill in the "post_body" field with "Corey goes to the store"
    And They click "Create Post"
    Then A new post is created
    And They are redirected to the "posts" page
    And The page contains "Corey goes to the store"
    And The page contains "Corey goes to the store" in ".post"
    
  Scenario: Corey edits any one of his posts
    When They navigate to the specific "post" page
    And They click "Edit this post"
    Then They fill in the "post_title" field with "Corey's new adventure"
    And They fill in the "post_body" field with "Corey goes to the future"
    And They click "Update"
    And They are redirected to the specific "post" page
    And The page contains "Corey's new adventure"

  Scenario: Corey deletes one of his posts
    When They navigate to the specific "post" page
    And They click "Delete post"
    Then The post is deleted
    And They are redirected to the "posts" page
    And The deleted post should not be present
