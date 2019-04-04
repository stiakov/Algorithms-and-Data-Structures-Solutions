def depth_first_search(graph)
  output = []
  checked = []
  queue = [0]
  until queue.empty?
    node = queue.shift
    unless checked.include? node
      output << node
      checked << node
    end
    queue << node
  end
  output
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
  0 => [1, 2], 1 => [0, 3, 4], 2 => [0, 5, 6], 3 => [1], 4 => [1, 5], 5 => [2, 4], 6 => [2]
)
# => [0, 1, 3, 4, 5, 2, 6]
