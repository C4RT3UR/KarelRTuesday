
$graphical = true

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../karel/robota"
require_relative "../mixins/sensor_pack"


class Moving < UrRobot
    include SensorPack
  
  def move_until
    
    while front_is_clear?
      move
    end
  end
end

def task
  
  karel = Moving.new(1, 1, Robota::NORTH, 1)
  karel.move_until

  
end

if __FILE__ == $0
  if $graphical
     screen = window(20, 80) 
     screen.run do
       task
     end
   else
     task
   end

end