
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"

class Square < UrRobot
  include Turner
  include SensorPack

def put_move
	put_beeper
	move
	
end


end