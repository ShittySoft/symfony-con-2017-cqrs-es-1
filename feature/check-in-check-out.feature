Feature: check-in and check-out

  Scenario: check-in
    Given a building was registered
    When a user checks into the building
    Then the user should have been checked into the building

  Scenario: check-in anomaly is detected on double check-in
    Given a building was registered
    And a user checked into the building
    When a user checks into the building
    Then the user should have been checked into the building
    And a check-in anomaly should have been detected

  Scenario: bob checks in
    Given the building "Grand Hotel Italia" was registered
    When a "bob" checks into "Grand Hotel Italia"
    Then "bob" user should have been checked into "Grand Hotel Italia"

  Scenario: check-in anomaly is detected on double check-in by "bob"
    Given the building "Grand Hotel Italia" was registered
    And "bob" user checked into "Grand Hotel Italia"
    When a "bob" checks into "Grand Hotel Italia"
    Then "bob" user should have been checked into "Grand Hotel Italia"
    And a check-in anomaly should have been detected for "Grand Hotel Italia", caused by "bob"
