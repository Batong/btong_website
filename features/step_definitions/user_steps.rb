When /^I (?:.+) with username, mail and password$/ do  #SIGN UP/LOGIN FORM - SUCCESSFUL
 form = UserForms.new
 form.userForm(USER, MAIL, PASSWORD, PASSWORD, USER, PASSWORD)
end

When /^I (?:.+) with fault username, mail and password$/ do #SIGN UP/LOGIN FORM - NOT SUCCESSFUL
 form = UserForms.new
 form.userForm(USER_FAULT, MAIL_FAULT, PASSWORD, PASSWORD_FAULT, USER_FAULT, PASSWORD_FAULT )
end

When /^I sign up with fault password$/ do
  form = UserForms.new
  form.userForm(USER, MAIL, PASSWORD, PASSWORD_FAULT, nil, nil)
end  

Then /^I should see a "([^\"]*)"$/ do |subject|
  unless((@@browser.text.include? subject) == true) 
   fail "The correct text is not displayed"   
  end  
end

Then /^I should see my name and mail at the page$/ do 
  unless((@@browser.text.include? USER && MAIL ) == true) 
   fail "The correct text is not displayed"
  end
end

Then /^I should get a warning message$/ do
  unless((@@browser.text.include? "There were problems with the following fields" ) == true) 
   fail "No warning message displayed"
  end
end


