Feature: Manage User
  In order to interact with the articles
  As an online user
  I want to create a site specific user

  Scenario: Create User
	Given I am on the sign up screen
	When  I sign up with my details
	Then  I should be logged in
	And   I should see my name at the page
	
	
