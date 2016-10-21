Feature: Like
  as a logged in user i should be able to like a post
  as a logged in user i should be able to unlike a

  Background:
    Given sample users have been created
    Given They have logged in as "corey@gmail.com"
    Given sample posts have been created
    Given They navigate to the specific "post" page

  @wip
  Scenario: A user likes a post
    When They click "Like"
    Then The number of likes is incremented by 1