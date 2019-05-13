def find_pairs(array, k)
  output = []
  values = Set.new
  values.merge(array)
  array.each do |elem|
    ctr_value = k - elem
    if values.include?(ctr_value) && !output.include?([ctr_value, elem])
      output << [elem, ctr_value]
    end
  end
  output
end

p find_pairs([-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4], 0)
# => [[-8, 8], [9, -9]]

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
