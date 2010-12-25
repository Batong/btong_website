When /^I (?:.+) with username, mail and password$/ do  #SIGN UP/LOGIN FORM - SUCCESSFUL
 form = UserForms.new
 form.userForm(USER, MAIL, PASSWORD, PASSWORD)
end

When /^I (?:.+) with fault username, mail and password$/ do #SIGN UP/LOGIN FORM - NOT SUCCESSFUL
 form = UserForms.new
 form.userForm(USER_FAULT, MAIL_FAULT, PASSWORD, PASSWORD_FAULT )
end

When /^I sign up with fault username$/ do
  form = UserForms.new
  form.userForm(USER, MAIL, PASSWORD, PASSWORD_FAULT)
end
  

Then /^I should see a "([^\"]*)"$/ do |subject|
  if ((@@safari.text.include? subject) == true) 
  else
   fail "The correct text is not displayed"   
  end  
end

Then /^I should see my name and mail at the page$/ do 
  if ((@@safari.text.include? USER && MAIL ) == true) 
  else
   fail "The correct text is not displayed"
  end
  sleep 5
end

Then /^I should get a warning message$/ do
  unless ((@@safari.text.include? "There were problems with the following fields" ) == true) 
   fail "No warning message displayed"
  end
  sleep 5
end


