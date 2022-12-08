#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "range"
require_relative "../karel/robota"

def task()
  
  karelA = Metteur_rangee.new(2, 2, Robota::NORTH, 12)
  

karelA.set_strat(K1.new)
karelA.mettre_rangee




  
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
