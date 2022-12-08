#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "cloche"
require_relative "../karel/robota"

def task()
  
  karel = Cloche.new(1, 6, Robota::NORTH, 26)
  karel.put_beeper
  karel.move
  karel.put_6
  karel.turn_left
  karel.move
  karel.turn_left
  karel.put_5
  karel.move
  karel.turn_right
  karel.move
  karel.place
  karel.turn_around
  karel.put_6
  karel.turn_left
  karel.move
  karel.turn_left
  karel.place
  karel.move
  karel.turn_left
  karel.move
  karel.turn_around
  karel.put_5
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.place



  
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