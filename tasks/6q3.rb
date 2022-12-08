#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robots4"
require_relative "../karel/robota"

def task()
  
  karel1 = Robots4.new(1, 1, Robota::NORTH, 1)
  karel2 = Robots4.new(6, 1, Robota::EAST, 0)
  karel3 = Robots4.new(6, 6, Robota::SOUTH, 0)
  karel = Robots4.new(1, 6, Robota::WEST, 0)
  
  karel1.go_put
  karel2.go_pick
  karel3.go_pick
  karel.go_pick

  karel.go_pick
  karel1.go_pick
  karel2.go_pick
  karel3.go_pick

  karel3.go_pick
  karel.go_pick
  karel1.go_pick
  karel2.go_pick

  karel2.go_pick
  karel3.go_pick
  karel.go_pick
  karel1.go_pick




  
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