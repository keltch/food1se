Feature: Add Restaurant
  As a Food Lover
  I want to able to add to my list of resturants by name of each, the type of food, and average price
  So that I can add resurants that I like
  
  Scenario: Add a New Resturant
    Given the application is running
    When I have entered "Add"
    Then I should see a sequently list of prompts to add Name, Type, and Price
    
