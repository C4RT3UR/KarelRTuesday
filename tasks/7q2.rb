#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "hello2"
require_relative "../karel/robota"

def task()
  gerant = Gerant.new
  gerant.tache




  
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
