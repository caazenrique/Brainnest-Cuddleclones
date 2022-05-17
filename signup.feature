Feature: Sign Up

    As an user, I want to sign in so I am able to purchase items

    Background:
    Given I access https://cuddleclones.com/account/register
    And fill First name and Last name

    Scenario: Succesful sign up
    When I type a valid email address
    And A valid password
    Then I will sign up successfully

    // QA verified //

    Scenario: Invalid email
    When I type an invalid email address
    And a valid password
    Then Must contain an error message for the email

    // QA verified - Improvement suggested //

    Scenario: Invalid password
    When I type a valid email address
    And an ivalid password
    Then Must contain an error message for the password

    Scenario: Required Field
    When I do not fill one or more required fields
    And click Sign Up
    Then The sign up must fail, and the field to be filled marked