# create and display Connect4 board
class Board

  NUMBER_OF_THINGS = 7

  def display
    lanes = Array.new(NUMBER_OF_THINGS) { [] }
    lanes.each_with_index { |lane, position|

      puts "#{position + 1} #{lane}"

    }
  end

  def add_piece
  end
end


board = Board.new
board.add_piece(4, "B")
board.add_piece(4, "W")
board.add_piece(3, "B")
board.display
