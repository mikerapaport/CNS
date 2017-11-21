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
      | name      | address              | phone  | cell | email                  | email2 | user_id |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | name  | dob        | status            | program   | week | days             | time                         | comments | parent_id | m2   | t2   | w2   | r2   | f2    |
      | Jane  | 03/09/2014 | Infant            | 10 Month  | 5    | "M, T, W, Th, F" | "Full Day (7:30AM - 5:30PM)" |          | 1         |      |      |      |      |       |
      | Joyce | 11/30/2012 | Early Childhood   | 10 Month  | 3    | "M, W, F"        | "Half Day (7:30AM - 12:30PM)"|          | 1         |      |      |      |      |       |
      | John  | 07/16/2012 | Early Childhood   | 10 Month  | 2    | "T, Th"          | "Half Day (7:30AM - 12:30PM)"|          | 1         |      |      |      |      |       |
      | Jake  | 02/14/2011 | HCS After-school  | 10 Month  |      | "M, T, W, Th, F" |                              |          | 1         | True | True | True | True | True  |
      | Joe   | 02/14/2011 | HCS After-school  | 10 Month  |      | "M, T, W, Th"    |                              |          | 1         | True | True | True | True |       |

  Scenario: Child has a full schedule
    Given I am on the parents profile page
    And I should see "Jane"
    And I should see that "Jane" has a dob of "03/09/2014"
    When I follow "Jane"
    Then I should see "Infant"
    And I should see "10 Month"
    And I should see "03/09/2014"
    And I should see "M, T, W, Th, F"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child has a 3-day schedule
    Given I am on the parents profile page
    Then I should see "Joyce"
    And I should see that "Joyce" has a dob of "11/30/2012"
    When I follow "Joyce"
    Then I should see "Early Childhood"
    And I should see "10 Month"
    And I should see "11/30/2012"
    And I should see "M, W, F"
    And I should see "Half Day (7:30AM - 12:30PM)"

  Scenario: Child has a 2-day schedule
    Given I am on the parents profile page
    Then I should see "John"
    And I should see that "John" has a dob of "07/16/2012"
    When I follow "John"
    Then I should see "Early Childhood"
    And I should see "10 Month"
    And I should see "07/16/2012"
    And I should see "T, Th"
    And I should see "Half Day (7:30AM - 12:30PM)"

  Scenario: Child's schedule is edited to remove Friday
    Given I am on the parents profile page
    When I follow "Register a Child"
    When I uncheck the Friday box
    And I press "Update child"
    Then I should see "M, T, W, Th"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child's schedule is changed from full day to Post Pre-K
    Given I am on the parents profile page
    When I follow "Register a Child"
    When I select "Post HCS Pre-K"
    And I press "Update child"
    Then I should see "M, T, W, Th"
    And I should see "11:30 AM - 5:30 PM"

  Scenario: Child is registered in five days of after school 10-month program
    Given I am on the parents profile page
    And I should see "Jake"
    And I should see that "Jake" has a dob of "02/14/2011"
    When I follow "Jake"
    Then I should see "HCS After-school"
    And I should see "10 Month"
    And I should see "02/14/2011"
    And I should see "M, T, W, Th, F"

  Scenario: Child is registered in less than five days of after school 10-month program
    Given I am on the parents profile page
    And I should see "Joe"
    And I should see that "Joe" has a dob of "02/14/2011"
    When I follow "Joe"
    Then I should see "HCS After-school"
    And I should see "10 Month"
    And I should see "02/14/2011"
    And I should see "M, T, W, Th"
