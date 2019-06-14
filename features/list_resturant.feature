Feature: List Restaurants
  As a Food Lover
  I want to see a list of resturants and the name of each, the type of food, and average price
  So that I know where the good food is
  
  Scenario: List a table of resturants to console
    Given I have entered List at the console
    And the application is running
    Then I should see a listing of each resturant including name, type, and price
    
    
    