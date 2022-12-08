#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"


class Letter_writer < UrRobot
  include Turner

  def ecrite_lettre
    raise NotImplementedError, 'Vous devez ecrire la lettre'

end

end


def step
  move
  put_beeper

end



def line
  step
  step
  step
  step
  step

end

class H < Letter_writer
  
  def ecrite_lettre
    line
    move
    turn_right
    move
    move
    move
    turn_right
    line
    turn_around
    move
    move
    turn_left
    step
    step
end

end

class E < Letter_writer
  
  def ecrite_lettre
    line
    turn_right
    step
    step
    move
    turn_right
    move
    move
    turn_right
    step
    step
    move
    turn_left
    move
    move
    turn_left
    step
    step
end

end

class L < Letter_writer
  
  def ecrite_lettre
    line
    turn_left
    step
    step
    move
    move
    step
    step
    turn_around
    move
    turn_left
    move
    turn_right
    move
    turn_right
    line
  end

end

class O < Letter_writer
  
  def ecrite_lettre
    line
    turn_right
    step
    turn_left
    move
    turn_right
    move
    turn_right
    line
    turn_right
    step
end



end



class Gerant
    def tache
    karelh = H.new(2, 2, Robota::NORTH, 12)
  
  karele = E.new(2, 7, Robota::NORTH, 11)
 
 karell = L.new(8, 11, Robota::SOUTH, 14)
  
  karelo = O.new(2, 19, Robota::NORTH, 12)

  karelh.ecrite_lettre
  karele.ecrite_lettre
  karell.ecrite_lettre
  karelo.ecrite_lettre
end

end