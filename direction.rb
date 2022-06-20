module Direction
  #direction movement method
  def direction_movement(face, position)
    #position for east direction
    if face == 'EAST' && position == 'LEFT'
      @face = 'NORTH'
    elsif face == 'EAST' && position == 'RIGHT'
      @face = 'SOUTH'
    end

    #position for WEST direction
    if face == 'WEST' && position == 'LEFT'
      @face = 'SOUTH'
    elsif face == 'WEST' && position == 'RIGHT'
      @face = 'NORTH'
    end

    #position for north direction
    if face == 'NORTH' && position == 'LEFT'
      @face = 'WEST'
    elsif face == 'NORTH' && position == 'RIGHT'
      @face = 'EAST'
    end

    #position for south direction
    if face == 'SOUTH' && position == 'LEFT'
      @face = 'EAST'
    elsif face == 'SOUTH' && position == 'RIGHT'
      @face = 'WEST'
    end
  end
end
