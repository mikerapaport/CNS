Feature: Update an existing parent profile
  As a parent
  so that I keep my personal information up to date
  I want to be able to update my information.

  Background: the website already has an existing parent profile
    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        |


  Scenario: Update an existing parent
    Given I am on the parents page
    When I follow "Sam Burt"
    Then I should see "25 Brettwood rd"
    And I should see "911"
    When I follow "Edit parent info"
    And I fill in "Primary Phone Number" with "411"
    And I fill in "Secondary Email" with "meals@wheels.com"
    And I press "Update Parent"
    Then I should see "411"
    And I should see "meals@wheels.com"
