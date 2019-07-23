def index_match(array)
  array.each_with_index do |item, idx|
    return item if item == idx
  end
  -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
puts index_match([-20, -15, -11, 2, 5, 7, 10, 11, 12, 13, 14, 14])
# => -1