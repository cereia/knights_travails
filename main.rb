# frozen_string_literal: true

require_relative 'lib/transformations'
require_relative 'lib/node'
require_relative 'lib/knight'
require_relative 'lib/board'

board = Board.new
puts board.board
# puts "node [3, 3] #{board.find_node([3, 3])}"
# p board.find_node([3, 3])
# knight = Knight.new([3, 3])
# knight.create_possible_moves
# p knight.children
# board.knight_moves([3, 3], [7, 2])
