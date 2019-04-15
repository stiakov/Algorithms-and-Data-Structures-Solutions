def binary_tree_height(array_tree)
  i = 0
  out = 0

  while
    i = 2 * i + 1
    out += 1
    break if array_tree[i].nil?
  end
  out
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
