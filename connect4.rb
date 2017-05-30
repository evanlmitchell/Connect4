require_relative "board"
require_relative "player"


player1 = Player.new(piece: "B")
player2 = Player.new(piece: "W")

board = Board.new
  .add_piece(4, player1.piece)
  .add_piece(4, player2.piece)
  .add_piece(3, player1.piece)
  .add_piece(0, player2.piece)
  .add_piece(-1, player2.piece)
  .add_piece(45, player2.piece)
  .display

puts "---------"

board
  .add_piece(4, player2.piece)
  .add_piece(4, player1.piece)
  .add_piece(4, player2.piece)
  .add_piece(4, player1.piece)
  .add_piece(4, player2.piece)
  .display

puts "---------"

board
  .add_piece(2, player2.piece)
  .display
