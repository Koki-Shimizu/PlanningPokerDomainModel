# To change this template, choose Tools | Templates
# and open the template in the editor.

require "./user"
require "./story"


class Group
  def initialize( group_name )
    @group_name = group_name
    @users = Hash.new
    @stories = Hash.new
  end
  
  def add_user( user )
    @users[user.get_id] = user
  end
  
  def add_selectable_story( story )
    @stories[story.get_story_summary] = story
  end
  
  def get_story( story_summary )
    return @stories[story_summary]
  end
  
  def plan( story_summary )
    
    user_estimates = Hash.new
    
    @users.each do |key, value|
      user_estimates[ value ] = value.estimate(get_story(story_summary))
    end
    
    return user_estimates
    
  end
  
end
