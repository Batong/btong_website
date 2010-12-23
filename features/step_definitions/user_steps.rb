When /^I sign up with my username, mail and password$/ do 
  @@safari.text_field(:id,"user_user").set USER
  @@safari.text_field(:id,"user_mail").set MAIL
  @@safari.password(:id,"user_password").set PASSWORD
  @@safari.password(:id, "user_password_confirmation").set PASSWORD
  @@safari.button(:name, "commit").click
end

When /^I sign up with fault username, mail and password$/ do 
  @@safari.text_field(:id,"user_user").set USER_FAULT
  @@safari.text_field(:id,"user_mail").set MAIL_FAULT
  @@safari.password(:id,"user_password").set PASSWORD_FAULT
  @@safari.password(:id, "user_password_confirmation").set PASSWORD
  @@safari.button(:name, "commit").click
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
  @@safari.close
end


