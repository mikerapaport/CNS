Feature: Update an existing parent profile
  As a parent
  so that I keep my personal information up to date
  I want to be able to update my information.

  Background: the website already has an existing parent profile
    Given I am logged in
    Then I should be authorized as a user
    And I should be authorized as a parent

    Given these Users:
      | name      | email                  | password |
      | Sam Burt  | samcoburt@gmail.com    | changeme |

    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 | user_id |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        | 1       |


  Scenario: Update an existing parent
    Given I am on the parents profile page
    Then I should see "Sam Burt"
    Then I should see "25 Brettwood rd"
    And I should see "911"
    When I follow "Edit Parent Information"
    And I fill in "Primary Phone Number" with "411"
    And I fill in "Secondary Email" with "meals@wheels.com"
    And I press "Update Parent"
    Then I should see "411"
    And I should see "meals@wheels.com"

  Scenario: Updating a parent with an invalid email address
    Given I am on the parents profile page
    When I follow "Edit Parent Information"
    And I fill in "Primary Email" with "notgood.nobueno"
    And I press "Update Parent"
    Then I should be on the update parent page
    And I should see "Error, invalid email"
