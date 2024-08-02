# frozen_string_literal: true

# Board class
class Board
  include Transformations
  attr_reader :board

  def initialize
    @board = create_nodes
    @visited = []
  end

  def create_nodes
    array = []
    [*0..7].each { |x_coord| [*0..7].each { |y_coord| array << Node.new(x_coord, y_coord) } }
    array
  end

  def find_node(array, position)
    array.select { |node| node.node_x == position[0] && node.node_y == position[1] }
  end

  def to_s
    p @board.map(&:to_s)
  end
end
