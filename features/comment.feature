Feature: Comment
  As a logged in user, I should be able to post a comment for any existing post
  As a logged in user, I should be able to edit my comment
  As a logged in user, I should be able to delete my comment


  Background:
#    Given sample users have been created
#    Given They have logged in as "trevor@gmail.com"
#    Given sample posts have been created

  @poltergeist
  Scenario: A user creates a new comment with a body
    Given sample users have been created
    And They have logged in as "trevor@gmail.com"
    And sample posts have been created
    When They navigate to the specific "post" page
    And They fill in the "comment_body" field with "I love buttocks!"
    And They press "ENTER"
    Then The page contains "I love buttocks!"
    And A new comment is created

