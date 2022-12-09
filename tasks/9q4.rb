2#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "roombapromax"
require_relative "../karel/robota"

def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")
  
  karel = Roomba.new(2, 2, Robota::NORTH, 0)
  karel.vacuum_plus



  
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