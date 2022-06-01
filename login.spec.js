/// <reference types="cypress" />

context('Login', () => {
    it('Succesful Login', () => {
        cy.visit('https://cuddleclones.com/account/login')
        cy.get('#customer_email').type('carloshenrh@gmail.com')
        cy.get('#customer_password').type('Marcela08')
        cy.get('#customer_login > .is-flex > .button').click()
        cy.get('.shopify-challenge__button')
        cy.get('.shopify-challenge__button').should('contain', 'Submit')
    })
            
});    


context('Invalid data', () => {
    it('Login with an invalid email address', () => {
        cy.visit('https://cuddleclones.com/account/login')
        cy.get('#customer_email').type('carlosrh@')
        cy.get('#customer_password').type('Marcela08')
        cy.get('#customer_login > .is-flex > .button').click()
        cy.get(':nth-child(3) > .label').should('contain', 'address')
    })

    it('Login with an invalid password', () => {
        cy.visit('https://cuddleclones.com/account/login')
        cy.get('#customer_email').type('carloshenrh@gmail.com')
        cy.get('#customer_password')
        cy.get('#customer_login > .is-flex > .button').click()
        cy.get(':nth-child(4) > .label').should('contain', 'address')
    })
    

    });