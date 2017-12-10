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
      | firstname | lastname | street           | city      | state | zipcode | phone  | cell | email                  | email2 | user_id |
      | Sam       | Burt     | 25 Brettwood Rd  | Bayshore  | NY    | 11706   | 911    |      | samcoburt@gmail.com    |        | 1       |

    Given these Children:
      | firstname  | lastname  | dob        | status              | program   | week | days             | weeks                      | time                         | comments | parent_id | m2   | t2   | w2   | r2   | f2    | week1 | week2 | week3 | week4 | week5 | week6 | week7 | week8 |
      | Jane       | S         | 03/09/2014 | Infant              | Summer    | 5    | "M, T, W, Th, F" | "1, 2, 3, 4, 5, 6, 7, 8"   | "Full Day (7:30AM - 5:30PM)" |          | 1         |      |      |      |      |       | True  | True  | True  | True  | True  | True  | True  | True  |
      | Joyce      | S         | 11/27/2013 | Early Childhood     | Summer    | 3    | "M, W, F"        | "1, 2, 3, 4, 5"            | "Half Day (7:30AM - 12:30PM)"|          | 1         |      |      |      |      |       | True  | True  | True  | True  | True  | False | False | False |

  Scenario: Create a new child
    Given I am on the create new child page
    When I fill in the following:
        | Child's First Name  | Mikaela  |
        | Child's Last Name   | Shiffrin |
        | Date of Birth       | 1/1/2013 |

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
        | Child's First Name  | Mikaela  |
        | Child's Last Name   | Shiffrin |
        | Date of Birth       | 1/1/2013 |
    And I press "Register"
    Then I should see "Error creating new child"

  Scenario: Child has an 8-week full day summer schedule
    Given I am on the parents profile page
    Then I should see "Jane S"
    And I should see that "Jane S" has a dob of "03/09/2014"
    When I follow "Jane S"
    Then I should see "Infant"
    And I should see "Summer"
    And I should see "03/09/2014"
    And I should see "M, T, W, Th, F"
    And I should see "1, 2, 3, 4, 5, 6, 7, 8"
    And I should see "Full Day (7:30AM - 5:30PM)"

  Scenario: Child has a 5-week half day summer schedule
    Given I am on the parents profile page
    Then I should see "Joyce S"
    And I should see that "Joyce S" has a dob of "11/27/2013"
    When I follow "Joyce S"
    Then I should see "Early Childhood"
    And I should see "Summer"
    And I should see "11/27/2013"
    And I should see "M, W, F"
    And I should see "1, 2, 3, 4, 5"
    And I should see "Half Day (7:30AM - 12:30PM)"
