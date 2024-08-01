# frozen_string_literal: true

# Board class
class Board
  def initialize
    @board = create_coords
    @visited = []
  end

  def create_coords
    array = []
    [*0..7].each { |x_coord| [*0..7].each { |y_coord| array << Node.new(x_coord, y_coord) } }
    array
  end

  def to_s
    p @board.map(&:to_s)
  end
end
