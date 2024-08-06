# frozen_string_literal: true

# Node class that represents each square on the board and their coordinates
class Node
  attr_reader :node_coordinates, :knight_positions
  attr_accessor :parent

  TRANSFORMATIONS = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]].freeze

  def initialize(data, parent = nil)
    @node_coordinates = data
    @knight_positions = create_possible_moves(@node_coordinates)
    @parent = parent
  end

  private

  def create_possible_moves(current_position)
    arr = []
    TRANSFORMATIONS.each { |transf| arr << [current_position[0] + transf[0], current_position[1] + transf[1]] }
    arr.select! { |position| position[0].between?(0, 7) && position[1].between?(0, 7) }
    arr
  end

  def to_s
    "coordinates: #{@node_coordinates} knight positions: #{@knight_positions} parent: #{@parent}"
  end
end
