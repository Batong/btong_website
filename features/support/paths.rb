module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def checking (url)
    @safari_browser =  Watir::Safari.new
    check = url.to_s
    unless ((@safari_browser.text.include? 'Not Found') == false)
       fail check + " is not found"
    end 
  end
  
  def link_to(link)
    case link
          
    when /the home page/ then
       LOCALHOST
    when /sign up/       then
       USER_PATH

        # Add more mappings here.
        # Here is an example that pulls values out of the Regexp:
        #
        #   when /^(.*)'s profile page$/i
        #     user_profile_path(User.find_by_login($1))

    else
       begin
         link =~ /the (.*) page/
         link_components = $1.split(/\s+/)
         self.send(path_components.push('link').join('_').to_sym)
       rescue Object => e
         raise "Can't find mapping from \"#{link}\" to a link URL.\n" +
                    "Now, go and add a mapping in #{__FILE__}"
       end
    end
  end
  
  def path_to(page_name)
    case page_name
          
    when /the home page/ then
       LOCALHOST
    when /sign up screen/ then
       LOCALHOST + USER_PATH

        # Add more mappings here.
        # Here is an example that pulls values out of the Regexp:
        #
        #   when /^(.*)'s profile page$/i
        #     user_profile_path(User.find_by_login($1))

    else
       begin
         page_name =~ /the (.*) page/
         path_components = $1.split(/\s+/)
         self.send(path_components.push('path').join('_').to_sym)
       rescue Object => e
         raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                    "Now, go and add a mapping in #{__FILE__}"
       end
    end
  end  
end
World(NavigationHelpers)