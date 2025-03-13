
Feature: Click Counter App


  Background:
    Given launch COUNTER screen
    And COUNTER display shows "1"
    And INCREMENT button is enabled
    And RESET button is disabled
    And CLICKS button is disabled

  # --- Scenarios without screen rotation ---

  Scenario: Press INCREMENT button once (test01)
    When press INCREMENT button
    Then COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times (test02)
    When press INCREMENT button 10 times
    Then COUNTER display should show "0"
    And INCREMENT button should be enabled
    And RESET button should be disabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times and view clicks count (test03)
    When press INCREMENT button 10 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    Then CLICKS display should show "10"
    And CLEAR button should be enabled

  Scenario: Press INCREMENT button 11 times and reset clicks (test04)
    When press INCREMENT button 11 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And CLICKS display should show "11"
    And CLEAR button should be enabled
    When press CLEAR button
    Then CLICKS display should show "0"
    And CLEAR button should be disabled
    And finish CLICKS screen
    And resume COUNTER screen
    And COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 12 times and reset counter (test05)
    When press INCREMENT button 11 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And press CLEAR button
    And finish CLICKS screen
    And resume COUNTER screen
    And press INCREMENT button
    Then COUNTER display should show "2"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    When press RESET button
    Then COUNTER display should show "0"
    And INCREMENT button should be enabled
    And RESET button should be disabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 13 times and check clicks count (test06)
    When press INCREMENT button 13 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And press CLEAR button
    And finish CLICKS screen
    And resume COUNTER screen
    And press INCREMENT button
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    And press RESET button
    And press INCREMENT button
    Then COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    When press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    Then CLICKS display should show "2"
    And CLEAR button should be enabled

  # --- Scenarios with screen rotation ---

  Scenario: Press INCREMENT button once and rotate screen (test07)
    When press INCREMENT button
    And rotate COUNTER screen
    Then COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times and rotate screen (test08)
    When press INCREMENT button 10 times
    And rotate COUNTER screen
    Then COUNTER display should show "0"
    And INCREMENT button should be enabled
    And RESET button should be disabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 10 times, view clicks count, and rotate screens (test09)
    When press INCREMENT button 10 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And rotate COUNTER screen
    And rotate CLICKS screen
    Then CLICKS display should show "10"
    And CLEAR button should be enabled

  Scenario: Press INCREMENT button 11 times, reset clicks, and rotate screens (test10)
    When press INCREMENT button 11 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And CLICKS display should show "11"
    And CLEAR button should be enabled
    And press CLEAR button
    And CLICKS display should show "0"
    And CLEAR button should be disabled
    And finish CLICKS screen
    And resume COUNTER screen
    And rotate COUNTER screen
    And rotate CLICKS screen
    Then COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 12 times and reset counter with rotation (test11)
    When press INCREMENT button 11 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And press CLEAR button
    And finish CLICKS screen
    And resume COUNTER screen
    And press INCREMENT button
    Then COUNTER display should show "2"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    And press RESET button
    And rotate COUNTER screen
    Then COUNTER display should show "0"
    And INCREMENT button should be enabled
    And RESET button should be disabled
    And CLICKS button should be enabled

  Scenario: Press INCREMENT button 13 times and check clicks count with rotation (test12)
    When press INCREMENT button 13 times
    And press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And press CLEAR button
    And finish CLICKS screen
    And resume COUNTER screen
    And press INCREMENT button
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    And press RESET button
    And press INCREMENT button
    Then COUNTER display should show "1"
    And INCREMENT button should be enabled
    And RESET button should be enabled
    And CLICKS button should be enabled
    When press CLICKS button
    And pause COUNTER screen
    And launch CLICKS screen
    And rotate COUNTER screen
    And rotate CLICKS screen
    Then CLICKS display should show "2"
    And CLEAR button should be enabled
