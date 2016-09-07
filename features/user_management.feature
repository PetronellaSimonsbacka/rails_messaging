Feature: As a visitor
In order to access the system functionality
I would like to create an account

Scenario: Allows a visitor to register an account
  Given I am on the landing page
  And I click on the "Sign up" link
  Then I should be on the registration page
  When I fill in "Name" with "hackerss"
  And I fill in "Email" with "hackerss@craftacademy.com"
  And I fill in "Password" with "hackerss"
  And I fill in "Password confirmation" with "hackerss"
  And I click the "Create" button
  Then I should see "Welcome! You have signed up successfully."
