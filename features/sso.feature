Feature: enable sso with GitHub and Google

Scenario: GitHub
  Given I am on the login page
  When  I press "Sign in with GitHub"
  Then  I should see "Username"
