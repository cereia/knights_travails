# frozen_string_literal: true

# Transformations module holds all methods that deal with movement information
module Transformations
  TRANSFORMATIONS = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]].freeze

  def create_possible_moves(current_position)
    arr = []
    TRANSFORMATIONS.each { |transf| arr << [current_position[0] + transf[0], current_position[1] + transf[1]] }
    arr.select! { |position| position[0].between?(0, 7) && position[1].between?(0, 7) }
    arr
  end
end
