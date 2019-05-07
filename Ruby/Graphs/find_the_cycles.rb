def graph_cycle?(graph)
=begin
  visited = []
  graph.each do |key, val|
    val.each { |i|
      return true if visited.include? i
    }
    visited << val
    visited.flatten!
  end
  false
=end
  depth_first_search graph
end

def depth_first_search(graph)
  visited = []
  stack = [0]
  result = []

  until stack.empty?
    node = stack.pop
    visited << node
    result << node unless visited.include? node
    unvisited = graph[node].reject { |n| visited.include? n }
    stack << unvisited
    stack.flatten!.sort!
  end
  result
end
puts graph_cycle?({
                      0=>[2],
                      1=>[4],
                      2=>[0, 5, 3],
                      3=>[5, 2],
                      4=>[5, 1],
                      5=>[4, 2, 3]
                  })
# => true

puts graph_cycle?({
                      0=>[2],
                      1=>[4, 3],
                      2=>[0, 5],
                      3=>[5, 1],
                      4=>[1],
                      5=>[2, 3]
                  })
# => false

puts graph_cycle?({
                      0=>[1, 2],
                      1=>[0, 3, 4],
                      2=>[0, 5, 6],
                      3=>[1],
                      4=>[1],
                      5=>[2],
                      6=>[2]
                  })
# => false


puts graph_cycle?({
                      0=>[2],
                      1=>[2],
                      2=>[0, 1, 3, 4, 5],
                      3=>[2],
                      4=>[2]
                  })
# => false
