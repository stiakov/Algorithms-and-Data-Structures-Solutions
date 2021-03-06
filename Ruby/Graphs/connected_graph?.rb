def connected_graph?(graph)

  graph.size.times do |i|
    asset = [i]
    asset.each { |v|
      asset << graph[v]
      asset.flatten!.uniq!
    }

    return false if graph.size != asset.size
  end
  true
end

puts connected_graph?(
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
)
# => true

puts connected_graph?(
  0 => [1, 2],
  1 => [0, 2],
  2 => [0, 1, 3, 4, 5],
  3 => [2, 4],
  4 => [3, 2],
  5 => [2]
)
# => true
