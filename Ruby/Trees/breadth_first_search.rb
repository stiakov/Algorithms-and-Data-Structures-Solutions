def bfs(graph)
  output, checked = [], []
  queue = [0]
  until queue.empty?
    node = queue.shift
    unless checked.include?(node)
      checked << node
      output << node
      queue += graph[node]
    end 
  end
  output
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]