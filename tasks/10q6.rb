
$graphical = true

require_relative "square"
require_relative "../karel/robota"

def task
  
  karel = Square.new(1, 1, Robota::EAST, 16)

  actions = %w[put_move put_move put_move put_move turn_left put_move put_move put_move put_move turn_left put_move put_move put_move put_move turn_left put_move put_move put_move put_move]
  actions.each do |action|
    karel.send(action) if karel.respond_to?(action)
  end

  
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 70) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end