# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value)
    current = self

    while nil != current

      if (value < current.data) && (current.left == nil)
        current.left = Node.new(value)

      elsif  (value > current.data) && (current.right == nil)
        current.right = Node.new(value)

      elsif (value < current.data)
        current = current.left

      elsif (value > current.data)
        current = current.right

      else
        return
      end
    end
  end
end

def array_to_bst(array, i = 0)
  node = Node.new(array[i])

  array[1..-1].each do |val|
    node.insert(val)
  end

  node
end

def pre_order(node)
  return '' if node.nil?

  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
end

def binary_search_tree(array)
  tree = array_to_bst(array)
  pre_order(tree).strip
end


puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"

puts binary_search_tree([10, 12, 15, 7, 2, 23, 9, 14, 21])
# "10 7 2 9 12 15 14 23 21"

puts binary_search_tree([5, 3, 7, 1, 2, 6, 8])
# "5 3 1 2 7 6 8"

puts binary_search_tree([50, 25, 75, 15, 21, 62, 91])
# "50 25 15 21 75 62 91"

