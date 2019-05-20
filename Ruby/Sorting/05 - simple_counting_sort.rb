def simple_counting_sort(array)
  max = array.max
  counter = Array.new(max + 1, 0)
  array.each do |val|
    counter[val] += 1
  end
  aux = []
  counter.each_with_index do |elem, idx|
    next if elem.zero?
    elem.times { aux << idx }
  end
aux
end

p simple_counting_sort([63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 12, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 33])
# => [1, 1, 3, 3, 6, 8, 9, 9, 10, 12, 13, 16, 16, 18, 20, 21, 21, 22, 23, 24, 25, 25, 25, 27, 27, 30, 30, 32, 32, 32, 33, 33, 33, 34, 39, 39, 40, 40, 41, 42, 43, 44, 44, 46, 46, 48, 50, 53, 56, 56, 57, 59, 60, 61, 63, 65, 67, 67, 68, 69, 69, 69, 70, 70, 73, 73, 74, 75, 75, 76, 78, 78, 79, 79, 80, 81, 81, 82, 83, 83, 84, 85, 86, 86, 87, 87, 89, 89, 89, 90, 90, 91, 92, 94, 95, 96, 98, 98, 99, 99]
#
#  MODEL SOLUTION
# def simple_counting_sort(array)
#   # write your code here
#   count_array = get_count_array(array)
#
#   ordered_array = []
#   count_array.each_with_index do |count, element|
#     ordered_array.concat([element] * count)
#   end
#
#   ordered_array
# end
#
# def get_count_array(numbers)
#     counts = Array.new(100, 0)
#
#   numbers.each do |element|
#     counts[element] += 1
#   end
#
#   counts
# end