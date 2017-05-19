# create and display Connect4 board
class Board
  NUMBER_OF_LANES = 7
  LANE_CAPACITY = 6

  def initialize
    @lanes = Array.new(NUMBER_OF_LANES) { [] }
  end

  def display
    @lanes.each_with_index { |lane, position|
      puts "#{position + 1} #{lane}"
    }
    self
  end

  def add_piece(position, player)
    #Errors:
    # Stack is too big
    # Non-existent position: < 1, > NUMBER_OF_THINGS

    if (1..NUMBER_OF_LANES).cover?(position)
      lane = @lanes[position - 1]
      
      if lane.length < LANE_CAPACITY
        lane.push(player)
      end
    end

    self
  end
end



board = Board.new
  .add_piece(4, "B")
  .add_piece(4, "W")
  .add_piece(3, "B")
  .add_piece(0, "W")
  .add_piece(-1, "W")
  .add_piece(45, "W")
  .display

puts "---------"

board
  .add_piece(4, "W")
  .add_piece(4, "B")
  .add_piece(4, "W")
  .add_piece(4, "B")
  .add_piece(4, "W")
  .display

puts "---------"

board
  .add_piece(2, "W")
  .display
