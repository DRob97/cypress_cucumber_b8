Feature: 'dynamic tables tests'

    Scenario: Validate dynamic tables pop-up window
        Given user navigates to 'https://techglobal-training.com/frontend'
        When user clicks on the "Project - Dynamic Tables" card
        Then user should see the "Dynamic Tables" page heading
        When user clicks on the "ADD PRODUCT" button
        Then user should see Add New Product pop-up
        When user clicks on the "CLOSE" button
        Then user should not see Add New Product pop-up