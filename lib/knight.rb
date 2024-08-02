# frozen_string_literal: true

# Knight class that holds all information regarding the knight
class Knight
  include Transformations
  attr_accessor :current_position, :children

  def initialize(position, parent = nil)
    @current_position = position
    @parent = parent
    @children = create_possible_moves(position)
  end

  def to_s
    "current_position: #{@current_position}\nparent: #{@parent}\nchildren #{@children}\n\n"
  end
end
