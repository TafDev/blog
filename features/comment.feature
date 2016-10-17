Feature: Comment
  As a logged in user, I should be able to post a comment for any existing post
  As a logged in user, I should be able to edit my comment
  As a logged in user, I should be able to delete my comment

  Background:
    Given sample users have been created
    Given They have logged in as "trevor@gmail.com"
    Given sample posts have been created

  Scenario:
  A user creates a new comment with a body
    When They navigate to the specific "post" page
    And They fill in the "post_comment" field with "I hate buttocks!"
    And They click "Comment"
    Then A new comment is created
    And The page contains "I hate buttocks!"
