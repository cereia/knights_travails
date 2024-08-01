# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/knight'
require_relative 'lib/board'

board = Board.new
puts board
knight = Knight.new([1, 2])
knight.create_possible_moves
p knight.next_move
