# frozen_string_literal: true

# Node class that represents each square on the board and their coordinates
class Node
  attr_reader :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    @x_pos = x_coord
    @y_pos = y_coord
  end

  def to_s
    [@x_pos, @y_pos]
  end
end
