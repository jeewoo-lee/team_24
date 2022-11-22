Feature: show representatives and their profile pages

Scenario: show representatives for the county
  Given I am on the homepage
  When  I click on "CA"
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

Scenario: display John Barrasso's profile
  Given I am on the Search page
  When  I fill in "address" with "82001"
  And   I press "Search"
  Then  I should see "John Barrasso"
  When  I follow "John Barrasso"
  Then  I should see "Republican Party"

Scenario: show representatives for the county
  Given I am on the homepage
  When I click on "CA"
  When I click on "the Alameda County homepage"
