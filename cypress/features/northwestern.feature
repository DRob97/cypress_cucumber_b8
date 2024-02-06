@Regression @Northwestern
Feature: Northwestern Test


    Scenario: Northwestern Navbar
        Given user navigates to "https://www.northwestern.edu/"
        Then user should see below navbar items
            | About | Academics | Admissions | Campus Experience | Research | Giving |
        # | About2 | Academics2 | Admissions2 | Campus Experience2 | Research2 | Giving2 |


        # Then user should fill the Form
        #     | label      | input      |
        #     | First name | TechGlobal |
        #     | Last Name  | School     |
        #     | From       | U.S        |
        #     | Live       | Chicago    |


        # Then user should fill the Form as key-value pairs
        #     | First name | TechGlobal |
        #     | Last Name  | School     |
        #     | From       | U.S        |
        #     | Live       | Chicago    |


        # Then user should handle another type
        #     | label      | input      | section    |
        #     | First name | TechGlobal | Personal   |
        #     | Last Name  | School     | Individual |
        #     | From       | U.S        | Country    |
        #     | Live       | Chicago    | Living     |

        