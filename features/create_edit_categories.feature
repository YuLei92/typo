Feature: Create categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "general"
    And I fill in "category_description" with "aoeu22"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "general"
    Then I should see "aoeu22"
    
    Then I follow "Foobar"
    
    When I fill in "category_name" with "Foobars"
    And I fill in "category_keywords" with "Lorem Ipsums"
    And I fill in "category_permalink" with "generals"
    And I fill in "category_description" with "aoeu22s"
    And I press "Save"
    Then I should see "Foobars"
    Then I should see "Lorem Ipsums"
    Then I should see "generals"
    Then I should see "aoeu22s"
    

