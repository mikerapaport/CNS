Feature: Display a child's schedule
  As a parent
  so that I can see my child's schedule
  I want to view a weekly schedule of daily times

  Background: Parent is logged in and authorized, and has at least one child registered
    Given I am logged in
    Then I should be authorized as a user

    Given these Users:
      | name      | email                  | password | role |
      | Sam Burt  | samcoburt@gmail.com    | changeme | user |

    Given these Parents:
      | firstname | lastname  | street          | city      | state  | zipcode | phone  | cell | email                  | email2 | user_id |
      | Sam       | Burt      | 25 Brettwood Rd |  Bayshore | NY     | 11706   |  911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | firstname  | lastname | dob        | status            | program   | week | days             | time                         | comments | parent_id | m2   | t2   | w2   | r2   | f2    |
      | Jane       | B        | 03/09/2014 | Infant            | 10 Month  | 5    | "M, T, W, Th, F" | "Full Day (7:30AM - 5:30PM)" |          | 1         |      |      |      |      |       |
      | Joyce      | B        | 11/30/2012 | Early Childhood   | 10 Month  | 3    | "M, W, F"        | "Half Day (7:30AM - 12:30PM)"|          | 1         |      |      |      |      |       |
      | John       | B        | 07/16/2012 | Early Childhood   | 10 Month  | 2    | "T, Th"          | "Half Day (7:30AM - 12:30PM)"|          | 1         |      |      |      |      |       |
      | Jake       | B        | 02/14/2011 | HCS After-school  | 10 Month  |      | "M, T, W, Th, F" |                              |          | 1         | True | True | True | True | True  |
      | Joe        | B        | 02/14/2011 | HCS After-school  | 10 Month  |      | "M, T, W, Th"    |                              |          | 1         | True | True | True | True |       |

  Scenario: Child has a full schedule
    Given I am on the parents profile page
    And I should see "Jane B"
    And I should see that "Jane B" has a dob of "03/09/2014"
    When I follow "Jane B"
    Then I should see "Infant"
    And I should see "10 Month"
    And I should see "03/09/2014"
    And I should see "M, T, W, Th, F"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child has a 3-day schedule
    Given I am on the parents profile page
    Then I should see "Joyce B"
    And I should see that "Joyce B" has a dob of "11/30/2012"
    When I follow "Joyce B"
    Then I should see "Early Childhood"
    And I should see "10 Month"
    And I should see "11/30/2012"
    And I should see "M, W, F"
    And I should see "Half Day (7:30AM - 12:30PM)"

  Scenario: Child has a 2-day schedule
    Given I am on the parents profile page
    Then I should see "John B"
    And I should see that "John B" has a dob of "07/16/2012"
    When I follow "John B"
    Then I should see "Early Childhood"
    And I should see "10 Month"
    And I should see "07/16/2012"
    And I should see "T, Th"
    And I should see "Half Day (7:30AM - 12:30PM)"

  # Scenario: Child's schedule is edited to remove Friday
  #   Given I am on the parents profile page
  #   When I follow "Register a Child"
  #   When I uncheck the Friday box
  #   And I press "Update child"
  #   Then I should see "M, T, W, Th"
  #   And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child's schedule is changed from Early Childhood to Post Pre-K
    Given I am on the parents profile page
    When I follow "Joyce B"
    When I follow "Register Child for Another Session"
    When I select "Post HCS Pre-K" from "Child Status"
    When I select "10 Month" from "Child Program"
    And I press "Register"
    Then I should see "M, W, F"

  Scenario: Child is registered in five days of after school 10-month program
    Given I am on the parents profile page
    And I should see "Jake B"
    And I should see that "Jake B" has a dob of "02/14/2011"
    When I follow "Jake B"
    Then I should see "HCS After-school"
    And I should see "10 Month"
    And I should see "02/14/2011"
    And I should see "M, T, W, Th, F"

  Scenario: Child is registered in less than five days of after school 10-month program
    Given I am on the parents profile page
    And I should see "Joe B"
    And I should see that "Joe B" has a dob of "02/14/2011"
    When I follow "Joe B"
    Then I should see "HCS After-school"
    And I should see "10 Month"
    And I should see "02/14/2011"
    And I should see "M, T, W, Th"

  Scenario: Attempt to reregister child without specifying status
    Given I am on the parents profile page
    And I should see "Joe B"
    When I follow "Joe B"
    And I follow "Register Child for Another Session"
    When I select "Select a Program" from "Child Status"
    And I press "Register"
    Then I should see "Error registering Joe B"
