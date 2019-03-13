def leftmost_nodes_sum(array)
  i = 1
  output = array[0] + array[1]
  ctr = true

  while ctr
    i = 2 * i + 1
    ctr = false if i > array.size
    output += array[i] if i < array.size
  end
  output
end

puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0]) # => 29
puts leftmost_nodes_sum([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0]) # => 13
puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9]) # => 11


=begin
MODEL SOLUTION

def leftmost_nodes_sum(array)
  # your code here
  i = 0
  sum = 0
  exp = 2 ** i - 1
  
  while exp < array.size
    sum += array[exp]
    i = i + 1

    exp = 2 ** i - 1
  end
  sum
end

=end