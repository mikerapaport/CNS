Feature: Create a new parent
  As parent
  so that I can register my child for CNS
  I want to be able to create a parent profile to store my information

  Background: The parent is logged in, but doesn't have a profile
    Given I am logged in
    Then I should be authorized as a user

  Scenario: Create a parent profile for Sam Burt
    Given I am on the create new parent page
    When I fill in the following:
        | Name                   | Sam Burt                      |
        | Primary Email          | samcoburt@gmail.com           |
        | Home Address           | 25 Brettwood Rd               |
        | Primary Phone Number   | 6177770000                    |

    And I press "Create Parent"
    Then I should see "New parent 'Sam Burt' create"
    And I should be on the user profile page

  Scenario: Create a new parent with an invalid email
    Given I am on the create new parent page
    When I fill in the following:
          | Name                   | Jayson Taytum                 |
          | Primary Phone Number   | 1234234                       |
          | Address                | 13 oak drive                  |

    When I write "123412skljagdlf" in "Primary Email"
    And I press "Create Parent"
    Then I should see "Error creating new parent"
