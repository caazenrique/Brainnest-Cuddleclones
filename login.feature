
Feature: Login

    As an user, I want to sign in so I am able to purchase items

    Background:
    Given I access https://cuddleclones.com/account/login

    Scenario: Succesful login
    When I type a valid email address
    And A valid password
    Then I will login successfully

    // QA verified //

    Scenario: Invalid email
    When I type an invalid email address
    And a valid password
    Then Must contain an error message for the email

    // QA verified //

    Scenario: Invalid password
    When I type a valid email address
    And an ivalid password
    Then Must contain an error message for the password

    // QA verified //

    