Feature: Navigate Food
  As a Food Lover
  I want to have simple start, quit and menu functions
  So that it is easy to use the application
  
  Scenario: Start the application
    Given I have an active terminal
    When I enter "ruby init.rb"
    Then I should see the welcome message and menu instructions
    
  Scenario: Quit the application
    Given The application is running
    When I enter "quit" or "Quit"
    Then I should see the Farwell message and the application should terminate
    
  Scenario: Useful menu messages
    Given the application is running
    And I have not entered a valid menu option
    When I enter a "non-valid" command
    Then I should see a message that the entry is not recoginzed and the valid menu choices