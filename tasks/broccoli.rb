#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Broccoli < UrRobot
  include Turner

def step
  turn_left
  move
  turn_right
  move
  pick_beeper

end

def stairs
	step
	step
	step

end


end