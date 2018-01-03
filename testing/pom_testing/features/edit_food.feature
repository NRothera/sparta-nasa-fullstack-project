Feature: Editing post

  Scenario: I should be able to click on a post and edit it
    Given I can access the homepage
    And I can click the food homepage link
    And I can click on a post
    And I can click the edit button
    And I change the body and title of the post
    Then I should be able to click the save button and make a new post
