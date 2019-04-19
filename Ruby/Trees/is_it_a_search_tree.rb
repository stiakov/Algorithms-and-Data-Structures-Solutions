def search_tree?(tree)
  out_left = branch(tree, 'left')
  return out_left unless out_left

  out_right = branch(tree, 'right')
  return out_right unless out_right

  true
end

def branch(tree, side)
  # puts side == 'left' ? 'LEFT BRANCH' : 'RIGHT BRANCH'
  p = 0
  l = 2 * p + 1
  r = 2 * p + 2
  out = true
  parents = []
  while p < tree.size - 1
    break if l >= tree.size

    # puts "#{tree[p]} <- padre"
    # puts "#{tree[l]} <- left"
    # puts "#{tree[r]} <- right"
    out = false if tree[l] > tree[p] && !tree[l].zero?
    out = false if tree[r] < tree[p] && !tree[r].zero?
    break unless out

    if side == 'left'
      out = false unless parents.select { |par| tree[l] > par && !tree[l].zero? }.empty?
      out = false unless parents.select { |par| tree[r] > par && !tree[r].zero? }.empty?
    else
      out = false unless parents.select { |par| tree[l] < par && !tree[l].zero? }.empty?
      out = false unless parents.select { |par| tree[r] < par && !tree[r].zero? }.empty?
    end
    break unless out

    parents << tree[p] unless tree[p].zero?

    p = side == 'left' ? 2 * p + 1 : 2 * p + 2
    l = 2 * p + 1
    r = 2 * p + 2
  end
  out
end


# ===================== TEST CASES =====================
puts search_tree?([20, 10, 27, 12, 14, 23, 30])
# => false

puts search_tree?([19, 9, 26, 4, 13, 17, 29])
# => false XXXXXXXX

puts search_tree?([20, 10, 27, 5, 14, 23, 30])
# => true

puts search_tree?([20, 10, 27, 5, 14, 23, 30, 0, 12, 0, 0, 0, 0, 0, 0])
# => false XXXXXXXX

puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])
# => true

# puts search_tree?([10, 4, 12])
# # => true

# puts search_tree?([10, 5, 7])
# # => false
