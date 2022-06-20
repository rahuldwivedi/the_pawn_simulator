module Movement
  include Calculation
  # get input method
  def get_movement
    i = 1
    loop do
      movement_position = gets.chomp.upcase
      puts "Please enter valid input" unless check_input(movement_position)
      if movement_position.include?("MOVE") && i == 1
        if movement_position[/\d+/].to_i > 2
          puts "\n Value of x can only be 1 or 2 \n"
        else
          calculate_movement(movement_position[/\d+/].to_i)
          i+=1
        end
      elsif movement_position.include?("MOVE")
        calculate_movement(movement_position[/\d+/].to_i)
      elsif movement_position.include?("LEFT")
        calculate_position(movement_position)
      elsif movement_position.include?("RIGHT")
        calculate_position(movement_position)
      end
      break if movement_position.include?('REPORT')# this will break loop
    end
  end

  def check_input(input)
    input.include?("MOVE") || input.include?("LEFT") ||
                  input.include?("RIGHT") || input.include?("REPORT")
  end
end
