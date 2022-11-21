Feature: show representatives and their profile pages

Scenario: show representatives for the county
  Given I am on the homepage
  When I click "CA"
  Then I should see "California"
  Then I should see "2019"
  And I should not see "California"
  Then I should see "Name"

Scenario: display Joe Biden's profile
  Given I am on the Search page
  When  I fill in "address" with "94704"
  And   I press "Search"
  Then  I should see "Joseph R. Biden"
  When  I follow "Joseph R. Biden"
  Then  I should see "Democratic Party"