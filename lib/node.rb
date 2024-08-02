# frozen_string_literal: true

# Node class that represents each square on the board and their coordinates
class Node
  include Transformations
  attr_reader :node_x, :node_y, :knight_positions

  def initialize(x_coord, y_coord)
    @node_x = x_coord
    @node_y = y_coord
    @knight_positions = create_possible_moves([@node_x, @node_y])
  end

  def to_s
    "coordinates: #{[@node_x, @node_y]} knight positions: #{@knight_positions}"
  end
end
