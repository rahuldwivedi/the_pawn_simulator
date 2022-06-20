module Sanitization
  include Validation
  # Sanitizing method for place command
  def sanitize_place_command(place_command)
    if place_command.downcase.include?('place')
      place_command = place_command.upcase.delete(' ').split(',')
      check_numbers(place_command)
      @face = place_command[2]
      @color = place_command[3]
      if check_position && check_direction && check_color
        get_movement_input
      end
    else
      puts " -- PLEAE ENTER VALID INPUT PLEASE FOLLOW THE GIVEN FORMAT -- \n"
      puts "press q for quit, press any keyword for continue...\n"
      quit = gets.chomp.downcase
      get_commands unless quit == 'q'
    end
  end

  # This method checks if the x,y cordinates have the appropriate value or not
  def check_numbers(place_command)
    if place_command[0].include?('-') || place_command[1].include?('-')
      puts " -- PLEAE ENTER VALID NUMBER -- \n"
      puts "press q for quit, press any keyword for continue...\n"
      quit = gets.chomp.downcase
      get_commands unless quit == 'q'
    else
      @x = place_command[0].delete(' ')[/\d+/].to_i
      @y = place_command[1].delete(' ')[/\d+/].to_i
    end
  end
end
