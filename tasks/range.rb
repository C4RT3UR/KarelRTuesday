#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"



class Metteur_rangee < UrRobot
  include Turner
  @place_strat = nil
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
    @place_strat = Strat.new()
  end



def set_strat(strat)
    @place_strat = strat
end

def mettre_rangee
    @place_strat.mettre_rangee(self)

end




end





class Strat

  def mettre_rangee(robot)
    raise NotImplementedError, 'Vous devez rangee le beeper'

end

end


class K1 < Strat
  
  def mettre_rangee(robot)
    robot.move


end

end



class K2 < Strat
  
  def mettre_rangee(robot)
    robot.move
    robot.move
end

end



class K3 < Strat
  
  def mettre_rangee(robot)
    robot.move
    robot.move
    robot.move
end

end
