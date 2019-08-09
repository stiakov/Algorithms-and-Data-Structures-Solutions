def duplicates(arr1, arr2)
  group = (arr1 + arr2)
  counter = Hash.new(0)
  out = []

  group.each { |i| counter[i] += 1 }
  counter.each { |key, value| out << key if value.odd? }

  out.sort!
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]

