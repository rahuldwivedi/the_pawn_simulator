$LOAD_PATH << '.'
require 'direction'
require 'calculation'
require 'validation'
require 'sanitization'
require 'movement'


# This is the main class which runs the whole program
class ChessBoard
  include Direction
  include Calculation
  include Validation
  include Sanitization
  include Movement

  begin
    # This method takes input from user to place the pawn
    def get_commands
      puts "\n\t\t\t -------------------------- ENTER PLACE COMMAND --------------------------\n"
       puts "\n INPUT SHOULD BE IN THIS FORM (PLACE X,Y,F,C) WHERE X,Y ARE CORDINATES, F IS THE FACE/DIRECTION THIS COULD BE EAST/WEST/NORTH/SOUTH AND C IS COLOR THAT COULD BE BLACK OR WHITE \n\n"
      place_command = gets.chomp
      sanitize_place_command(place_command) #this will sanitize place command
    end

    # This method takes input from user to move the pawn
    def get_movement_input
      puts "\n\t\t\t -------------------------- ENTER MOVEMENT INPUT -------------------------- \n"
      puts "\n INPUT SHOULD BE IN THIS FORM (MOVE X) WHERE MOVE IS COMMAND TO MOVE THE PAWN AND X COULD BE 1 OR 2 \n AND THEN YOU CAN ENTER THE DIRECTION(LEFT OR RIGHT) WHERE TO MOVE \n\n"
      puts "\n ------ TO SEE THE MOVEMENTS REPORTS YOU NEED TO ENTER REPORT ------- \n"
      get_movement #this will take movement input
      puts "\nOUTPUT : - \n\n"
      puts "#{@x}, #{@y}, #{@face}, #{@color}\n\n"
      puts "Enter the q for quit, otherwise press any keyword\n"
      quit = gets.chomp.downcase
      loop do
        break if quit == 'q'
        get_commands
      end
    end
  rescue StandardError => e
    puts "#{e}"
  end

  #It will create object of chess board
  @chess_board = ChessBoard.new
  @chess_board.get_commands
end
