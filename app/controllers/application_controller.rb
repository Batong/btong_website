# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #include ActionView::Helpers::UrlHelper


=begin
HOME = 'home'
POSTS = 'posts'
NEW = 'new'
  
    def currentMenuLink
      unless current_page? :controller => 'google'
       link_to 'Home',{ :controller => 'Home'},  :class => 'css-menu'
      else 
       link_to 'Home', { :controller => 'Home'},  :class => 'css-menu-active'
      end
    end
=end
end


    

   #Scrub sensitive parameters from your log
  # filter_parameter_logging :password
