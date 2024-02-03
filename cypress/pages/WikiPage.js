const TGBasePage = require('./TGBasePage')

class WikiPage extends TGBasePage{
    // locators
    getSearchInput(){
        return cy.get('#search-input')
    }

    getHeading(){
        return cy.get('#firstHeading')
    }
    // methods
    search(name){
        this.getSearchInput().type(`${name} {enter}`)
    }
}

module.exports = WikiPage