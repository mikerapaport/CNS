Feature: Create a new rental property
  As parent
  so that I can register my child for CNS
  I want to be able to select the correct registration form and fill it out

  Background: The parent already has a child
    Given this child:
      | name         | dob        | daylength  | monday | tuesday | wednesday | thursday | friday | infant_tod | comments                | after_school_len | attending_rec_program | w1  | w2  | w3  | w4  | w5  | w6  | w7  | w8  | parent_id |
      | John Stewart | 12/12/2008 | full       | true   | false   | true      | false    | true   | nil        | He's a really sweet boy | nil              | nil                   | nil | nil | nil | nil | nil | nil | nil | nil | 1         |

  Scenario: Create a new child who is in pre-k and is registered for three days
    Given I am on the create new rental property page
    When I fill in the following:
        | Name            | Mikaela Shiffrin           |
        | Dob             | 1/1/2013                   |
        | Parent_id       | 1                          |

    When I check "3 day"
    When I write "She is so good at skiing" in "comments"
    And I press "Create new child"
    Then I should be on my parent page
    And I should see "New child 'Mikaela Shiffrin' created"
    And I should see that "dob" is listed as "1/1/2013"
    And I should see that the child is registered for "3 days"
