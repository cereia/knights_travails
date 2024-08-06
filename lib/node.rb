# frozen_string_literal: true

# Node class that represents each square on the board and their coordinates
class Node
  include Transformations
  attr_reader :node_coordinates, :knight_positions
  attr_accessor :parent

  def initialize(data, parent = nil)
    @node_coordinates = data
    @knight_positions = create_possible_moves(@node_coordinates)
    @parent = parent
  end

  def to_s
    "coordinates: #{@node_coordinates} knight positions: #{@knight_positions} parent: #{@parent}"
  end
end
