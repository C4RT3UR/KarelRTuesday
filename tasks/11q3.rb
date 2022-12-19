
$graphical = true

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../karel/robota"

class Moving < UrRobot

end

def task
  
  karel = Moving.new(1, 1, Robota::NORTH, 1)

  actions = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]  
    actions.each do |action|
    karel.send(action) if karel.respond_to?(action)
  end

  
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