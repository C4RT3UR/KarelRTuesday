
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

  def  recurse
    if front_is_clear?
      move  
      recurse
    end
  end



  def put_beepers(n) 
    unless (n==0) 
      put_beeper
      put_beepers(n-1)    
    end
  end

  def spiral(n) 
    n.times do 
      put_beeper
      move
    end
    unless (n==18) 
      turn_left
      spiral(n+1)    
    end
  end



end


def task
  
  karel = Moving.new(10, 11, Robota::EAST, INFINITY)
  karel.spiral(0)

  
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
