#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/grinch.kwld.")
  
  karel = Grinch.new(6, 10, Robota::SOUTH, 0)
  karel.ruin_christmas

  
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