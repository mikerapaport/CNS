Feature: Create a new parent
  As parent
  so that I can register my child for CNS
  I want to be able to create a parent profile to store my information

  Background: The parent already has a profile
    Given these Parents:
      | name         | address         | phone  | cell | email             | email2 | user_id |
      | Sam Burt     | 25 Brettwood Rd | 617    |      | sburt@gmail.com   |        | 1       |

  Scenario: Create a new parent who's name is mark
    Given I am on the create new parent page
    When I fill in the following:
        | Primary Email          | sburt@sad.com                 |
        | Primary Phone Number   | 1234234                       |
        | Address                | 13 oak drive                  |

    When I write "mark" in "Name"
    And I press "Create Parent"
    Then I should be on the parents page
    And I should see "New parent 'mark' created"

  Scenario: Create a new parent with an invalid email
    Given I am on the create new parent page
    When I fill in the following:
          | Name                   | Jayson Taytum                 |
          | Primary Phone Number   | 1234234                       |
          | Address                | 13 oak drive                  |

    When I write "123412skljagdlf" in "Primary Email"
    And I press "Create Parent"
    And I should see "Error, invalid email"
