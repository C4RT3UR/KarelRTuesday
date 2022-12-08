#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Cartero < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, NORTH, beepers)
  end


end