# To change this template, choose Tools | Templates
# and open the template in the editor.
require "./gamemaker"


def start_planning_poker

  game_maker = Game_Maker.new( "endo" )

  game_maker.make_user("001", "John")
  game_maker.make_user("002", "Steve")
  game_maker.make_user("003", "Taro")
  
  story1 = "Show Exam List."
  story2 = "Create a exam."
  story3 = "Modify a exam."
  
  game_maker.set_story(story1)
  game_maker.set_story(story2)
  game_maker.set_story(story3)

  estimate1 =  game_maker.start_planning_poker(story1)
  
  p estimate1
  
end

puts "Planning Poker Domain Model."
start_planning_poker


