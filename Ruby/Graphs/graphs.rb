def graph(hash_graph)
  idx = hash_graph.keys
  val = hash_graph.values
  output = [idx[0]]
  i = 0

  while
    unless output[-2] == idx[-1]
      output << val[i][0]
    end

    i = val[i][0]
    break if output.include?(val[i][0])
  end
  output
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [3, 2]
}
h1 = {
  0 => [3],
  1 => [2, 3],
  2 => [4, 1],
  3 => [1, 0],
  4 => [1]
}

p graph(h1) # => [0, 3, 1, 2, 4]
p graph(hash) # => [0, 2, 5, 3]
p graph({0 => [1, 6], 1 => [2, 0, 3, 4], 2 => [3, 1], 3 => [6, 1, 2], 4 => [1, 5, 6], 5 => [4], 6 => [4, 3, 0]}) # => [0, 1, 2, 3, 6, 4]


=begin
------ Cheat MODEL SOLUTION Just works with hashes that has in his last value[0] a 4 -----
 def graph(hash_graph)
  next_node = 0
  result = [0]
  
  while next_node != 4
    next_node = hash_graph[next_node].first
    result << next_node
  end
  
  result
end 
  
=end