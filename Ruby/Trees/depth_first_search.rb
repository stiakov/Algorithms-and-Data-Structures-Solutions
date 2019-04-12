def depth_first_search(graph)
  output = [0]
  queue = [0]

  until output.size == graph.keys.size - 1
    node = queue.shift
    graph[node].each do |i|
      unless output.include? i
        queue << i
        output << i
        break
      end
      queue << node[0]
    end
  end
  missing = graph.keys - output
  output << missing[0]
end

p depth_first_search(
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
)
# => [0, 2, 5, 4, 1, 3]

p depth_first_search(
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5, 6],
  3 => [1],
  4 => [1, 5],
  5 => [2, 4],
  6 => [2]
)
# => [0, 1, 3, 4, 5, 2, 6]
