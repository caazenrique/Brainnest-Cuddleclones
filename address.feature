
Feature: Add a new address

    As an user I want to provide my address to receive my products

    Background:
    Given I access https://cuddleclones.com/account/addresses
    And click on //add a new address//

    Scenario: Valid address
    When I type a valid address
    And type my personal info
    Then the address will be added successfully

    // QA verified //
    // Improvement suggestion: Validating the zipcode will bring more security to the client //

    Scenario: Incomplete address
    When there is on or more fields not completed
    Then the address must not be validated

    // Test failed: The address is created without any info //

Feature: Edit an address

     As an user I want to edit my address

    Background:
    Given I access https://cuddleclones.com/account/addresses
    And click on Edit

    Scenario: All fields are completed
    When I edit the desired fields
    And complete all info
    Then the address will be edited successfully

    // QA verified //

    Scenario: Not all fields are completed
    When I edit the desired fields
    And  fail to complete all info
    Then the address will not be edited

    // Test failed: The system allows the address to be edited without all info //

Feature: Delete address

    As an user, I want to delete my address

    Scenario: Delete info
    Given I access https://cuddleclones.com/account/addresses
    When I click on delete
    And confirm the action
    Then the address will be deleted from the account

    // QA verified //



