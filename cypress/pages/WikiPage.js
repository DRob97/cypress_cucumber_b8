class WikiPage{
    // locators
    getSearchInput(){
        return cy.get('#search-input')
    }

    getHeading(){
        return cy.get('#firstHeading')
    }

    getLanguages(){
        return cy.get('nav strong')
        // return cy.get('.central-featured > div > a')
    }
    // methods
    search(name){
        this.getSearchInput().type(`${name} {enter}`)
    }
}

module.exports = WikiPage