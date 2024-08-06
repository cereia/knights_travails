# frozen_string_literal: true

require_relative 'lib/transformations'
require_relative 'lib/node'
require_relative 'lib/board'

board = Board.new
board.knight_moves([3, 3], [5, 4])
board.knight_moves([3, 3], [0, 0])
board.knight_moves([3, 3], [7, 3])
board.knight_moves([0, 0], [5, 4])
board.knight_moves([0, 0], [7, 6])
board.knight_moves([0, 0], [7, 7])
board.knight_moves([3, 3], [4, 3])
