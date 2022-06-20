module Validation
  def check_position
    if @x < 0 || @x > 7
      puts "\nPlease enter valid position\n"
      get_commands
    elsif @y < 0 || @y > 7
      puts "\nPlease enter valid position\n"
      get_commands
    else
      true
    end
  end

  def check_direction
    if @face == "EAST" || @face == "WEST" || @face == "NORTH" || @face == "SOUTH"
      true
    else
      puts "\nDirection is Incorrect\n"
      get_commands
    end
  end

  def check_color
    if @color == "WHITE" || @color == "BLACK"
      true
    else
      puts "\nColor is Incorrect\n"
      get_commands
    end
  end
end
