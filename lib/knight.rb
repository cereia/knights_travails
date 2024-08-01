# frozen_string_literal: true

# Knight class that holds all information regarding the knight
class Knight
  attr_accessor :current_position, :next_move

  TRANSFORMATIONS = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]].freeze

  def initialize(position)
    @current_position = position
    @next_move = create_possible_moves
  end

  def create_possible_moves
    arr = []
    TRANSFORMATIONS.each { |transf| arr << [@current_position[0] + transf[0], @current_position[1] + transf[1]] }
    arr
  end
end
