Feature: Display a child's schedule
  As a parent
  so that I can see my child's schedule
  I want to view a weekly schedule of daily times

  Background: Parent has at least one child registered
    Given these Users:
      | name      | email                  | password |
      | Sam Burt  | samcoburt@gmail.com    | changeme |

    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 | user_id |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | name  | dob        | status   | program   | days           | time                         | comments | parent_id |
      | Jane  | 03/09/2014 | Infant   | 10 Months | M, T, W, Th, F | "Full Day (7:30AM - 5:30PM)" |          | 1         |

  Scenario: Child has a full schedule
    Given I am on the parents profile page
    When I follow "Jane"
    Then I should see that "Jane" has a dob of "03/09/2014"
    And I should see "M, T, W, Th, F"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child's schedule is edited to remove Friday
    Given I am on parents page
    When I follow "Edit child info"
    When I uncheck the Friday box
    And I press "Update child"
    Then I should see "M, T, W, Th"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child's schedule is changed from full day to Post Pre-K
    Given I am on parents page
    When I follow "Edit child info"
    When I select "Post HCS Pre-K"
    And I press "Update child"
    Then I should see "M, T, W, Th"
    And I should see "11:30 AM - 5:30 PM"
