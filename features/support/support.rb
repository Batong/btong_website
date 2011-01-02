class UserForms
  def userForm (user, mail, passwords, password_confirmation, login_name, login_password)
   @browser =  Watir::Safari.new
   #@browser = Watir::Browser.new(:chrome)
   #@browser = FireWatir::Firefox.new
   my_user = [user, mail, passwords, password_confirmation, login_name, login_password]
   my_form = ['user_user', 'user_mail', 'user_password', 'user_password_confirmation', 'user_session_user', 'user_session_password']
   i = 0
   my_user.each do |user_form|
     if ((user_form != nil) && (@browser.text_field(:id, my_form[i]).exists?))     
       @browser.text_field(:id, my_form[i]).set user_form
     elsif ((user_form != nil) && (@browser.password(:id, my_form[i]).exists?))   
        @browser.password(:id, my_form[i]).set user_form
     end
     i += 1   
   end
   @browser.button(:name, "commit").click
  end     
end