# To change this template, choose Tools | Templates
# and open the template in the editor.

require "./group"
require "./user"
require "./story"


class Game_Maker
  def initialize( product_name )
    @product_name = product_name
    @group = Group.new( "GroupA" )
  end
  
  def make_user( id, name )
    user = User.new(id, name)
    @group.add_user(user)
  end
  
  def set_story( story_summary )
    story = Story.new(story_summary)
    @group.add_selectable_story(story)
  end
  
  def start_planning_poker( story_summary )
    return @group.plan(story_summary)
    
  end  
   
end
