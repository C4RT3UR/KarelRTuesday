#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Construction < UrRobot
  include Turner

def place
  move
  put_beeper

end

def ligne
	place
	place
	place
	place
	place
	place
	place
	turn_left

end


end