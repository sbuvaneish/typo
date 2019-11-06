Feature: Add and Edit categories
  As a blog administrator
  So that I can help customers to better organize their work
  I want to be able to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successful navigation
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the category page

  Scenario: Successful adding/editing categories
    Given I am on the category page
    When I fill in "Name" with "Thriller"
    And I fill in "Keywords" with ""
    And I fill in "Permalink" with "thriller"
    And I fill in "Description" with ""
    And I press "Save"
    Then I should be on the category page 
    And I should see "Category was successfully saved"
    And I should see "Thriller"
    
