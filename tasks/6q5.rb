#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "panier"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/world_panier")
  
  karel = Panier.new(2, 5, Robota::EAST, 0)
  karel.turn_around
  karel.move_3
  karel.turn_right
  karel.move_3
  karel.move
  karel.move
  karel.pick_10
  karel.move
  karel.pick_10
  karel.turn_right
  karel.move
  karel.pick_10
  karel.turn_around
  karel.move
  karel.turn_left
  karel.move_3
  karel.move_3
  karel.turn_left
  karel.move_3
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move_3
  karel.turn_left
  karel.move
  karel.pick_10
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move_3
  karel.move_3
  karel.move
  karel.move
  karel.turn_right
  karel.move_3
  karel.move_3
  karel.turn_right
  karel.move
  karel.put_40



  
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 70) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end