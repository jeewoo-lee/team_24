Feature: enable sso with GitHub and Google

Scenario: GitHub
  Given I am on the login page
  When  I press "Sign in with GitHub"
  
Scenario: Google
  Given I am on the login page
  When I press "Sign in with Google"

Scenario: Logout
  Given I am on the logout page
  Then I should see "You have successfully logged out."