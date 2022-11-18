Feature: Look up representatives using a valid address "9887 Longfellow St San Diego, CA 92154"

Scenario: Look up representative using a valid address
  Given I am currently on the ActiveMap home page
  When I am on "representatives"
  Then I should be currently on the "search" page
  When I fill in "address" with "95382"
  And I press "Search"
  Then I should be currently on the "Representative" page
  When I follow "Josh Harder"
  