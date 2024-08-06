# frozen_string_literal: true

# Board class
class Board
  include Transformations
  attr_reader :board

  def initialize
    @board = create_nodes
  end

  def knight_moves(start_pos, end_pos)
    start_node = find_node(start_pos)
    end_node = find_node(end_pos)

    queue = [start_node]
    path = make_path(queue, end_node, [start_pos])
    fill_in_parents(path)
    puts "You made it from #{start_pos} to #{end_pos} in #{path.length - 1} #{path.length - 1 > 1 ? 'moves' : 'move'}!"
    puts "Here's your path:"
    path.reverse.each { |position| p position }
  end

  private

  def create_nodes
    array = []
    [*0..7].each { |x_coord| [*0..7].each { |y_coord| array << Node.new([x_coord, y_coord]) } }
    array
  end

  def find_node(position)
    @board.select { |node| return node if node.node_coordinates == position }
  end

  def make_path(queue, end_node, history, visited = [])
    # history holds all nodes that are visited during the breadth first search
    # visited holds the shortest path needed to get from start_pos to end_pos
    return visited if visited.include?(end_node.node_coordinates)

    node = queue.shift
    if node == end_node
      visited << node.node_coordinates
    else
      traverse_the_children(node, history, queue)
      make_path(queue, end_node, history, visited)
    end
  end

  # add any necessary parents to the array
  def fill_in_parents(arr)
    arr.each do |position|
      current = find_node(position)
      next if current.parent.nil?

      arr << current.parent unless arr.include?(current.parent)
    end
    remove_all_parents
    arr
  end

  # parent variable of the nodes are removed to prevent interference
  # with filling parent positions with successive knight_moves calls on the same game board
  def remove_all_parents
    @board.each { |node| node.parent = nil }
  end

  def traverse_the_children(node, history, queue)
    node.knight_positions.each do |position|
      child = find_node(position)
      next if history.include?(position)

      # give each child the proper parent variable to help fill in the path later
      child.parent = node.node_coordinates
      queue << child
      history << position
    end
  end

  def to_s
    p @board.map(&:to_s)
  end
end
