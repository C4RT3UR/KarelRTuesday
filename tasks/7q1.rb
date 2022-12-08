#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "hello"
require_relative "../karel/robota"

def task()
  
  karelh = H.new(2, 2, Robota::NORTH, 12)
  
  karele = E.new(2, 7, Robota::NORTH, 11)
 
 karell = L.new(8, 11, Robota::SOUTH, 14)
  
  karelo = O.new(2, 19, Robota::NORTH, 12)

  karelh.ecrit_lettre
  karele.ecrit_lettre
  karell.ecrit_lettre
  karelo.ecrit_lettre




  
end

if __FILE__ == $0
  if $graphical
     screen = window(21, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
