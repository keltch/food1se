Feature: Find Restaurants
  As a Food Lover
  I want to able to search all the text in the resturant data
  So that I can easily fine any matching resturants
  
  Scenario: Match Found
    Given the application is running
    When I enter Search "Search String"
    Then I should see a listing of each resturant item that contains this text string
  
    Scenario: None Found
    Given the application is running
    When I enter Search "Search String"
    Then I should see a message that no resturants contains the text string