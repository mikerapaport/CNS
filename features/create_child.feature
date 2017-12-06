Feature: Create a new child
  As parent
  so that I can register my child for CNS
  I want to be able to select the correct registration form and fill it out

  Background: The parent already has a child
    Given I am logged in
    Then I should be authorized as a user

    Given these Users:
      | name      | email                  | password |
      | Sam Burt  | samcoburt@gmail.com    | changeme |

    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 | user_id |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | name  | dob        | status            | program   | week | days             | time                         | comments | parent_id | m2   | t2   | w2   | r2   | f2    |
      | Jane  | 03/09/2014 | Infant            | 10 Month  | 5    | "M, T, W, Th, F" | "Full Day (7:30AM - 5:30PM)" |          | 1         |      |      |      |      |       |

  Scenario: Create a new child
    Given I am on the create new child page
    When I fill in the following:
        | Name            | Mikaela Shiffrin           |
        | Date of Birth   | 1/1/2013                   |

    When I select "Early Childhood" from "Child Status"
    When I select "10 Month" from "Child Program"

    When I write "She is so good at skiing" in "Additional Information"
    And I press "Register"
    Then I should be on the parents profile page
    And I should see "New child 'Mikaela Shiffrin' created"
    And I should see that "Mikaela Shiffrin" has a dob of "1/1/2013"

  Scenario: Attempt to create child without specifying status
    Given I am on the create new child page
    When I fill in the following:
        | Name            | Mikaela Shiffrin           |
        | Date of Birth   | 1/1/2013                   |
    And I press "Register"
    Then I should see "Error creating new child"
