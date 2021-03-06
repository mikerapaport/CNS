# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

        when /^the create new child page$/
            #self.send(["new", "parent", "child"].push('path').join('_').to_sym)
            new_parent_child_path(Parent.find_by($1))

        when /^the parents profile page$/
            parent_path(Parent.find_by($1))

        when /^the parents page$/
            self.send(["parents"].push('path').join('_').to_sym)

        when /^the create new parent page$/
            self.send(["new", "parent"].push('path').join('_').to_sym)

        when /^the update parent page$/
            edit_parent_path(Parent.find_by($1))
            #self.send(["edit", "parent"].push('path').join('_').to_sym)

        when /^the children page$/
            self.send(["children"].push('path').join('_').to_sym)

        when /^the user profile page$/
            user_path(User.find_by($1))

        when /^the update child page$/
            edit_parent_child_path(Child.find_by($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
