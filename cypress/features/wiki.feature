Feature: Wiki search functionality

    Background:
        Given user navigates to "https://www.wikipedia.org/"

    Scenario Outline: Validate wiki search
        When user search for "<name>" on Wikipedia
        Then user should see "<name>" in the title
        # And user should see "<name>" in the URL
        And user should see "<name>" in the first heading

        Examples:
            | name            |
            | Jeff Bezos      |
            | Mark Zuckerberg |
            | Elon Musk       |