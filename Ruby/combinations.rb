def combinaties(array)
  comb = array.permutation.to_a
  puts comb
  # combinaties = []
  # i = 0
  # while i <= array.length - 1
  #   combinaties << array[i]
  #   unless i == array.length - 1
  #     array[(i + 1)..(array.length - 1)].each  do |volgend_element|
  #       combinaties << (combinaties.last.clone << volgend_element)
  #     end
  #   end
  #   i += 1
  # end
end

puts combinaties([1, 2, 3])
