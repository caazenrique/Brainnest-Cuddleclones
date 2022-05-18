
Feature: Upper bar

    As an user I want to access the different categories and products through the upper bar

    Background:
    Given I access https://cuddleclones.com

    Scenario: Clicking on the title of the category
    When I click on the title
    Then I will access all the products of the category

    // Test failed: Products are misplaced in categories. //
    

    Scenario: Clicking on the aarrow to expand
    When I click on the aarrow
    And select the product
    Then I will access the product directly

    // Test failed: Products are misplaced in categories. //
