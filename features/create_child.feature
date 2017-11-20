Feature: Create a new child
  As parent
  so that I can register my child for CNS
  I want to be able to select the correct registration form and fill it out

  Background: The parent already has a child
    Given these Users:
      | name      | email                  | password |
      | Sam Burt  | samcoburt@gmail.com    | changeme |

    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 | user_id |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | name         | dob        | status   | comments                | w1  | w2  | w3  | w4  | w5  | w6  | w7  | w8  | parent_id |
      | John Stewart | 12/12/2015 | Infant   | He's a really sweet boy | nil | nil | nil | nil | nil | nil | nil | nil | 1         |

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
