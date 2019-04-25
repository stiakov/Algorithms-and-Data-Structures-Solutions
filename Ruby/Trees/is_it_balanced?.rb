def balanced_tree?(array_tree)
  out = true
  output_l = counter(array_tree, 'left')
  height_l = output_l[1]
  out = output_l[0]
  return out unless out

  output_r = counter(array_tree, 'right')
  height_r = output_r[1]
  out = output_r[0]

  out = false if height_l - height_r < -1 || height_l - height_r > 1
  out
end

def counter(array_tree, side)
  balance = true
  p = side == 'left' ? 1 : 2
  l = 2 * p + 1
  r = 2 * p + 2
  counter_left = array_tree[p].zero? ? 0 : 1
  counter_right = array_tree[p].zero? ? 0 : 1

  until array_tree[p].nil?
    counter_left += 1 unless array_tree[l].nil? || array_tree[l].zero?
    counter_right += 1 unless array_tree[r].nil? || array_tree[r].zero?
    break balance = false if counter_left - counter_right < -1 || counter_left - counter_right > 1

    p = side == 'left' ? 2 * p + 1 : 2 * p + 2
    l = 2 * p + 1
    r = 2 * p + 2
  end
  height = [counter_left, counter_right].max
  [balance, height]
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true

#
#  # MODEL SOLUTION
#
#  class Node
#   attr_reader :data
#   attr_accessor :left, :right
#
#   def initialize(data)
#     @data = data
#   end
# end
#
# def array_to_tree(array, i)
#   return nil if i >= array.length || array[i] == 0
#
#   node = Node.new(array[i])
#   node.left = array_to_tree(array, 2*i+1)
#   node.right = array_to_tree(array, 2*i+2)
#
#   node
# end
#
# def recursive_tree_height(tree)
#   return 0 if tree.nil?
#   return 1 if tree.left.nil? && tree.right.nil?
#
#   [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
# end
#
# def balanced_tree?(array_tree)
#   # write your code here
#   tree = array_to_tree(array_tree, 0)
#
#   balanced_tree_recursive?(tree)
# end
#
# def balanced_tree_recursive?(tree)
#   return true if tree.nil? || (tree.left.nil? && tree.right.nil?)
#
#   balanced_tree_recursive?(tree.left) &&
#   balanced_tree_recursive?(tree.right) &&
#   (recursive_tree_height(tree.left) - recursive_tree_height(tree.right)).abs <= 1
# end
#
