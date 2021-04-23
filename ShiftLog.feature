Feature: Shift Log

  Shift Log Management for Operators

  Scenario: Main Page
    Given I'm on the "Shift Logs" page
    Then I should see a table with all the shift logs listed
    And the table must have the columns: Event Date, Area, Machine, Comment, Status
    And I should see a button to add a shift log
    And I should see the total number of shift logs

  Scenario: Display Shift Log Form
    Given I'm on the "Shift Logs" page
    When I click on the add button
    Then I should see a popup with the title "Add Shift Log"
    And the dialog must have a form with the fields: Status, Event Date, Area, Machine, Operator, Comment
    And the fields Status, Event Date, Area, Operator, Comment are mandatory
    And I should see a save button in the popup header

  Scenario: Add Shift Log
    Given I'm on the "Shift Logs" page
    When I click on the add button
    And I fill up the form with values
    And I click on the save button
    Then the saved shift log should appear on the table

  Scenario: Edit Shift Log Form
    Given I'm on the "Shift Logs" page
    And there is a shift log added and displayed as row in the table
    When I click on the row
    Then I should see a popup with the title "Edit Shift Log"
    And the values from the row are filled in the form
    And I should see a delete button at the bottom of the form
    And I should see a save button in the popup header

  Scenario: Edit Shift Log
    Given I'm on the "Shift Logs" page
    And there is a shift log added and displayed as row in the table
    When I click on the row
    And I fill up the form with values different from the ones being shown
    And I click on the save button
    Then the saved shift log with different values should appear on the table

  Scenario: Delete Confirmation Shift Log
    Given I'm on the "Edit Shift Log" popup
    When I click on the delete button
    Then a confirmation box should appear

  Scenario: Delete Shift Log
    Given I'm on the "Edit Shift Log" popup
    And I have clicked on the delete button
    And I have confirmed the deletion
    Then I should not see the shift log in the table
