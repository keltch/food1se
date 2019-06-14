Feature: Sort Restaurants
  As a Food Lover
  I want to able to sort the list of resturants by name of each, the type of food, and average price
  So that I can see how resurants
  
  Scenario: Sort Resturant Table by Price
    Given I have entered "List Price"
    And the application is running
    When I enter
    Then I should see a listing of each resturant sorted from lowest to highest price
    
  Scenario: Sort Resturant Table by Name
    Given I have entered "List Name"
    And the application is running
    When I enter
    Then I should see a listing of each resturant sorted by Name from A-Z
    
  Scenario: Sort Resturant Table by Type
    Given I have entered "List Cuisine"
    And the application is running
    When I enter
    Then I should see a listing of each resturant sorted by Type from A-Z