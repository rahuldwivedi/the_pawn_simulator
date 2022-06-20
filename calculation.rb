module Calculation
  # This method is use to calculate the pawn position
  def calculate_position(position)
    direction_movement(@face, position)
  end

  # This method calcualtes movement and change origin
  def calculate_movement(movement)
    movement = 1 if movement == 0
    case @face
    when "EAST"
      @x = @x + movement
    when "WEST"
      @x = @x - movement
    when "NORTH"
      @y = @y + movement
    when "SOUTH"
      @x = @y - movement
    end
  end
end
