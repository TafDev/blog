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
      And They press "ENTER" on "textarea"
    Then The page contains "I love buttocks!"
      And A new comment is created

  @poltergeist
  Scenario: A user edits their comment
    Given sample users have been created
      And They have logged in as "trevor@gmail.com"
      And sample posts have been created
      And  sample comments have been created
      And The comment belongs to the signed in user
    When They navigate to the specific "post" page
      And They click "Edit comment" in "#edit-comment"
      And They fill in the "comment_body" field with "I love biiiiiiiig butts and i cannot lie!"
      And They press "ENTER" on "textarea"
    Then The page contains "I love biiiiiiiig butts and i cannot lie!"
      And The comment is updated

  @poltergeist
  Scenario: A user edits their comment
    Given sample users have been created
    And They have logged in as "trevor@gmail.com"
    And sample posts have been created
    And  sample comments have been created
    And The comment belongs to the signed in user
    When They navigate to the specific "post" page
    And They click "Delete" in "#edit-comment"
    Then The comment is deleted


