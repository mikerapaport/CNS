Feature: Create a new child
  As parent
  so that I can register my child for CNS
  I want to be able to select the correct registration form and fill it out

  Background: The parent already has a child

    Given these Parents:
      | name      | address              | phone  | cell | email                  | email2 |
      | Sam Burt  | 25 Brettwood rd      | 911    |      | samcoburt@gmail.com    |        |

    Given these Children:
      | name         | dob        | status   | comments                | w1  | w2  | w3  | w4  | w5  | w6  | w7  | w8  | parent_id |
      | John Stewart | 12/12/2015 | Infant   | He's a really sweet boy | nil | nil | nil | nil | nil | nil | nil | nil | 1         |

  Scenario: Create a new child who is in infant program
    Given I am on the create new child page
    When I fill in the following:
        | Name            | Mikaela Shiffrin           |  status  |
        | Date of Birth   | 1/1/2013                   |  Infant  |


    When I write "She is so good at skiing" in "Additional Information"
    And I press "Register"
    Then I should be on the children page
    And I should see "New child 'Mikaela Shiffrin' created"
    And I should see that "Mikaela Shiffrin" has a dob of "1/1/2013"
    And I should see that "Mikaela Shiffrin" is registered in "Infant" program
