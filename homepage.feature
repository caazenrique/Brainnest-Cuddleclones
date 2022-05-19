
Feature: Home Page

As an user, I want to have access to the highlighted products in the home Page

Background:
Given I access https://cuddleclones.com

Scenario: Direct access to the products
When I see a product I like
And click on the desired area
Then I will be redirected to the product

// QA verified //
// Imrovement suggestion: Some products are repeated various times at the home page. //

Scenario: Dynamic image display
When I see a product I like
And place the cursor on the image
Then I will see more images of the product

// QA verified //