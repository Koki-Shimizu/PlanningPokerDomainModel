# To change this template, choose Tools | Templates
# and open the template in the editor.

require "./story"


class User

  @@selectable_story_point = [ 0, 1, 2, 3, 5, 8, 13, 20, 40, 100 ]
  
  def User.selectable_story_point
    @@selectable_story_point
  end
  
  def initialize( id, name )
    @id, @name = id, name
    @adjusted_story_point = Hash.new
  end
    
  def adjusted_story_point( story, card )
    @adjusted_story_point[story.get_story_summary] = card
  end
    
  def get_id
    return @id
  end
  
  def get_name
    return @name
  end
  
  def estimate( story )
    
    if @adjusted_story_point.include?(story.get_story_summary) then
      return @adjusted_story_point[ story.get_story_summary ]
    else
      # Prompt user's input
      return @@selectable_story_point[rand(@@selectable_story_point.length - 1)]
    end
  end
  
end
