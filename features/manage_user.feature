Feature: Manage User
  In order to interact with the articles
  As an online user
  I want to create a site specific user and be able to login

# Test 1 - Sign Up action

  Scenario: Create User - Positive test
	Given I am on the home page
	When  I follow "Sign up" link 	
	And   I sign up with username, mail and password
    Then  I should see a "User was successfully created"
	And   I should see my name and mail at the page
	
  Scenario: Create User - Negative test - all forms
    Given I am on the sign up screen
	When  I sign up with fault username, mail and password
	Then  I should get a warning message
	
  Scenario: Create User - Negative test - password form
	Given I am on the sign up screen
    When  I sign up with fault username
    Then  I should get a warning message
		
# Test 2 - Log In action		
	
   Scenario: Log in user - Positive test
	Given I am on the home page
	When  I follow "Log in" link 	
	And   I login in with my username, mail and password
    Then  I should see my name and mail at the page

   Scenario: Log in user - Negative test user doesnt exist

   Scenario: Log in user - Negative test sign in with wrong password or username


	
	
