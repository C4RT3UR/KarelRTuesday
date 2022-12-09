#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class Roomba < UrRobot
  include SensorPack
  include Turner

def move
	super
		if next_to_a_beeper?
			pick_beeper
		end
	
end

def move_up
	move
	move
	move
	move
	move
	move
	move
	move
	move
end


def move_down
	turn_right
	move
	turn_right
	move
	move
	move
	move
	move
	move
	move
	move
	move
	turn_left
	move
	turn_left
end

def place_corner
	turn_left
	move
	move
	move
	move
	move
	move
	move
	move
	put_beeper
	put_beeper

end


def place_corner2
	turn_left
	move
	move
	move
	move
	move
	move
	move
	move
	move
	put_beeper
	put_beeper

end




def vacuum_plus
	move_up
	move_down
	move_up
	move_down
	move_up
	move_down
	move_up
	move_down
	move_up
	place_corner
	place_corner2
	place_corner
	place_corner2
end



end