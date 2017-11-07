Feature: Display a child's schedule
  As a parent
  so that I can see my child's schedule
  I want to view a weekly schedule of daily times

  Background: Parent has at least one child registered
    Given an existing child:
      | name           | dob        | program  | days           | hours                        | comments |
      | Mike Rapaport  | 10/10/1995 | ?????    | M, T, W, Th, F | "Full Day (7:30AM - 5:30PM)" |          |

  Scenario: Child has a full schedule
    Given I am on the parents page
    When I follow "View Schedule"
    Then I should see "M, T, W, Th, F"
    And I should see "Full Day (7:30AM - 5:30PM)"
