Feature: Manage User
  In order to interact with the articles
  As an online user
  I want to create a site specific user and be able to login

# Test 1 Scenario - Sign Up and Logout action

  Scenario: Create User - Positive test
	Given I am on the home page
	When  I follow "Sign up" link 	
	And   I sign up with username, mail and password
    Then  I should see a "Thank you for signing up! You are now logged in."
	And   I should see my name and mail at the page
	
  Scenario: Log out - Visible and functional logging out - Positive test
    Given I should see my name and mail at the page
	When  I follow "Log out" link
	Then  I should see a "Successfully logged out."
	
  Scenario: Log out - Not visible when logged out - Negative test
    Given I am on the sign up screen
	When  I sign up with fault username, mail and password
	Then  I should get a warning message

  Scenario: Create User - Negative test - all forms
    Given I am on the sign up screen
	When  I sign up with fault username, mail and password
	Then  I should get a warning message
	
  Scenario: Create User - Negative test - password form
	Given I am on the sign up screen
    When  I sign up with fault password
    Then  I should get a warning message
		
# Test 2 Scenario - Log In action		
	
   Scenario: Log in user - Positive test
	Given I am on the home page
	When  I follow "Log in" link 	
	And   I login with username, mail and password 
    Then  I should see a "Successfully logged in."
    And   I should see my name and mail at the page

   Scenario: Log in user - Negative test user doesnt exist

   Scenario: Log in user - Negative test sign in with wrong password or username


	
	
