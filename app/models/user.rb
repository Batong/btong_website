class User < ActiveRecord::Base
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
   acts_as_authentic do |c|
   c.login_field = :mail          # email is the login field
   c. validate_login_field = false # There is no login field, so don't validate it
   end
end