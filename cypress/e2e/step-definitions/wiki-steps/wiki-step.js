const { When, Then } = require('@badeball/cypress-cucumber-preprocessor')
const WikiPage = require('../../../pages/WikiPage')

const wikiPage = new WikiPage()


When(/^user search for "([^"]*)" on Wikipedia$/, (name) => {
	wikiPage.search(name)
})


// Then(/^user should see "([^"]*)" in the title$/, (name) => {
// 	wikiPage.getTitle().should('contain', name)
// })


// Then(/^user should see "([^"]*)" in the URL$/, (name) => {
// 	wikiPage.getURL().should('contain', name)
// })


Then(/^user should see "([^"]*)" in the first heading$/, (name) => {
	wikiPage.getHeading().should('contain', name)
})


Then(/^user should see below languages around the logo$/, (dataTable) => {
	const languages = dataTable.rawTable.flat()

	wikiPage.getLanguages().each(($el, index) => {
		cy.wrap($el).should('have.text', languages[index])
	})
})