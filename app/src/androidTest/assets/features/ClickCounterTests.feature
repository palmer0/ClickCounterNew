
Feature: Click Counter App


  Background:
    Given launch "COUNTER" screen
    And "COUNTER" display show "0"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "disabled"
    And "CLICKS" button is "disabled"

  # --- Scenarios without screen rotation ---

  Scenario: Press increment button once (test01)

    When press "INCREMENT" button
    Then "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 10 times (test02)
    When press "INCREMENT" button 10 times
    Then "COUNTER" display show "0"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "disabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 10 times and view clicks count (test03)
    When press "INCREMENT" button 10 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    Then "CLICKS" display show "10"
    And "CLEAR" button is "enabled"

  Scenario: Press increment button 11 times and reset clicks (test04)
    When press "INCREMENT" button 11 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And "CLICKS" display show "11"
    And "CLEAR" button is "enabled"
    When press "CLEAR" button
    Then "CLICKS" display show "0"
    And "CLEAR" button is "disabled"
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 12 times and reset counter (test05)
    When press "INCREMENT" button 11 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And press "CLEAR" button
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And press "INCREMENT" button
    Then "COUNTER" display show "2"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    When press "RESET" button
    Then "COUNTER" display show "0"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "disabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 13 times and check clicks count (test06)
    When press "INCREMENT" button 13 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And press "CLEAR" button
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And press "INCREMENT" button
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    And press "RESET" button
    And press "INCREMENT" button
    Then "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    When press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    Then "CLICKS" display show "2"
    And "CLEAR" button is "enabled"

  # --- Scenarios with screen rotation ---

  Scenario: Press increment button once and rotate screen (test07)
    When press "INCREMENT" button
    And rotate "COUNTER" screen
    Then "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 10 times and rotate screen (test08)
    When press "INCREMENT" button 10 times
    And rotate "COUNTER" screen
    Then "COUNTER" display show "0"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "disabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 10 times, view clicks count, and rotate screens (test09)
    When press "INCREMENT" button 10 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And rotate "COUNTER" screen
    And rotate "CLICKS" screen
    Then "CLICKS" display show "10"
    And "CLEAR" button is "enabled"

  Scenario: Press increment button 11 times, reset clicks, and rotate screens (test10)
    When press "INCREMENT" button 11 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And "CLICKS" display show "11"
    And "CLEAR" button is "enabled"
    And press "CLEAR" button
    And "CLICKS" display show "0"
    And "CLEAR" button is "disabled"
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And rotate "COUNTER" screen
    And rotate "CLICKS" screen
    Then "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 12 times and reset counter with rotation (test11)
    When press "INCREMENT" button 11 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And press "CLEAR" button
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And press "INCREMENT" button
    Then "COUNTER" display show "2"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    And press "RESET" button
    And rotate "COUNTER" screen
    Then "COUNTER" display show "0"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "disabled"
    And "CLICKS" button is "enabled"

  Scenario: Press increment button 13 times and check clicks count with rotation (test12)
    When press "INCREMENT" button 13 times
    And press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    And press "CLEAR" button
    And press BACK on "CLICKS" screen
    #And finish "CLICKS" screen
    #And resume "COUNTER" screen
    And press "INCREMENT" button
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    And press "RESET" button
    And press "INCREMENT" button
    Then "COUNTER" display show "1"
    And "INCREMENT" button is "enabled"
    And "RESET" button is "enabled"
    And "CLICKS" button is "enabled"
    When press "CLICKS" button
    #And pause "COUNTER" screen
    And launch "CLICKS" screen
    #And rotate "COUNTER" screen
    And rotate "CLICKS" screen
    Then "CLICKS" display show "2"
    And "CLEAR" button is "enabled"
