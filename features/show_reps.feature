Feature: show representatives and their profile pages

Scenario: display Joe Biden's profile
  Given I am on the Search page
  When  I fill in "address" with "94704"
  And   I press "Search"
  Then  I should see "Joseph R. Biden"
  When  I follow "Joseph R. Biden"
  Then  I should see "Democratic Party"