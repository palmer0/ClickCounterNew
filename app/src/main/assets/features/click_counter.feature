
Feature: Advanced Click Counter


  Background:
    Given I launch the COUNTER screen
    And the COUNTER display shows "0"
    And the INCREMENT button is enabled
    And the RESET button is disabled
    And the CLICKS button is disabled

  # --- Scenarios without screen rotation ---

  Scenario: Press INCREMENT button once
    When I press the INCREMENT button
    Then the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times
    When I press the INCREMENT button 10 times
    Then the COUNTER display should show "0"
    And the INCREMENT button should be enabled
    And the RESET button should be disabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times and view clicks count
    When I press the INCREMENT button 10 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    Then the CLICKS display should show "10"
    And the CLEAR button should be enabled

  Scenario: Press INCREMENT button 11 times and reset clicks
    When I press the INCREMENT button 11 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And the CLICKS display should show "11"
    And the CLEAR button should be enabled
    When I press the CLEAR button
    Then the CLICKS display should show "0"
    And the CLEAR button should be disabled
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 12 times and reset counter
    When I press the INCREMENT button 11 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I press the CLEAR button
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And I press the INCREMENT button
    Then the COUNTER display should show "2"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    When I press the RESET button
    Then the COUNTER display should show "0"
    And the INCREMENT button should be enabled
    And the RESET button should be disabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 13 times and check clicks count
    When I press the INCREMENT button 13 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I press the CLEAR button
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And I press the INCREMENT button
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    And I press the RESET button
    And I press the INCREMENT button
    Then the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    When I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    Then the CLICKS display should show "2"
    And the CLEAR button should be enabled

  # --- Scenarios with screen rotation ---

  Scenario: Press INCREMENT button once and rotate screen
    When I press the INCREMENT button
    And I rotate the COUNTER screen
    Then the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times and rotate screen
    When I press the INCREMENT button 10 times
    And I rotate the COUNTER screen
    Then the COUNTER display should show "0"
    And the INCREMENT button should be enabled
    And the RESET button should be disabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times, view clicks count, and rotate screens
    When I press the INCREMENT button 10 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I rotate the COUNTER screen
    And I rotate the CLICKS screen
    Then the CLICKS display should show "10"
    And the CLEAR button should be enabled

  Scenario: Press INCREMENT button 11 times, reset clicks, and rotate screens
    When I press the INCREMENT button 11 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And the CLICKS display should show "11"
    And the CLEAR button should be enabled
    And I press the CLEAR button
    And the CLICKS display should show "0"
    And the CLEAR button should be disabled
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And I rotate the COUNTER screen
    And I rotate the CLICKS screen
    Then the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 12 times and reset counter with rotation
    When I press the INCREMENT button 11 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I press the CLEAR button
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And I press the INCREMENT button
    Then the COUNTER display should show "2"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    And I press the RESET button
    And I rotate the COUNTER screen
    Then the COUNTER display should show "0"
    And the INCREMENT button should be enabled
    And the RESET button should be disabled
    And the CLICKS button should be enabled

  Scenario: Press INCREMENT button 13 times and check clicks count with rotation
    When I press the INCREMENT button 13 times
    And I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I press the CLEAR button
    And I finish the CLICKS screen
    And I resume the COUNTER screen
    And I press the INCREMENT button
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    And I press the RESET button
    And I press the INCREMENT button
    Then the COUNTER display should show "1"
    And the INCREMENT button should be enabled
    And the RESET button should be enabled
    And the CLICKS button should be enabled
    When I press the CLICKS button
    And I pause the COUNTER screen
    And I launch the CLICKS screen
    And I rotate the COUNTER screen
    And I rotate the CLICKS screen
    Then the CLICKS display should show "2"
    And the CLEAR button should be enabled
