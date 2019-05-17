def insertion_sort(array)
  (array.size - 1).downto(1) do |idx|
    val = array[idx]
    prev = array[idx - 1]
    next unless val < prev

    array[idx] = prev
    array[idx - 1] = prev
    puts array.join(' ')
    array[idx - 1] = val
  end
  puts array.join(' ')
end

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9

puts '-' * 20

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([2, 3, 4, 5, 6, 7, 8, 9, 10, 1])
#  2 3 4 5 6 7 8 9 10 10
#  2 3 4 5 6 7 8 9 9 10
#  2 3 4 5 6 7 8 8 9 10
#  2 3 4 5 6 7 7 8 9 10
#  2 3 4 5 6 6 7 8 9 10
#  2 3 4 4 5 6 7 8 9 10
#  2 3 3 4 5 6 7 8 9 10
#  2 2 3 4 5 6 7 8 9 10
#  1 2 3 4 5 6 7 8 9 10
