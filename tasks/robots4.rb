#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Robots4 < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def go_pick
  	pick_beeper
  	move
  	move
  	move
  	move
  	move
  	put_beeper
  	turn_right

  end



  def go_put
  	move
  	move
  	move
  	move
  	move
  	put_beeper
  	turn_right


  end



end