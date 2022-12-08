#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Grinch < UrRobot
  include Turner

def cheminer
	move
	move
	turn_right
	move
	turn_left
	move
	move
	pick_beeper
	pick_beeper
	turn_right
	move
	pick_beeper
	pick_beeper
	turn_around
	move
	turn_left
	move
	move
	turn_right
	move
	turn_left
	move
	move


end

def change
	turn_left
	move
	move
	move
	turn_left

end


def row
	cheminer
	change
	cheminer
	change 
	cheminer


end


def leave_row
	turn_right
	move
	move
	move
	move
	move
	move
	move
end


def put_4
	put_beeper
	put_beeper
	put_beeper
	put_beeper
end

def put_all
	put_4
	put_4
	put_4
	put_4
	put_4
	put_4
end

def ruin_christmas
	row
	leave_row
	turn_left
	move
	move
	move
	move
	move
	move
	turn_left
	move
	turn_left
	row
	leave_row
	leave_row
	move
	move
	turn_left
	move
	turn_right
	move
	move
	put_all

end


end