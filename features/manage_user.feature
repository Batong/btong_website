Feature: Manage User
  In order to interact with the articles
  As an online user
  I want to create a site specific user

  Scenario: Create User - Positive test
	Given I am on the home page
	When  I follow "sign up screen" link 	
	And   I sign up with my username, mail and password
	Then  I should see a "User was successfully created"
	And   I should see my name and mail at the page
	
  Scenario: Create User - Negative test
    Given I am on the sign up screen
	When  I sign up with fault username, mail and password
	Then  I should get a warning message

	
	
