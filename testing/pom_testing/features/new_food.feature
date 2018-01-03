Feature: Inputting a new post

  Scenario: If I fill in all the input fields, I should be able to make a new post
    Given I can access the homepage
    And I can click the food homepage link
    And I click on the new food link
    And I fill in the input fields
    Then I should be able to click the save button and make a new post
