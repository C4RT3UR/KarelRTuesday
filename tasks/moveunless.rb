#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"

class MoveUnless < UrRobot
  include SensorPack

def move
	unless front_is_clear?
		

		else super
	end
end



end