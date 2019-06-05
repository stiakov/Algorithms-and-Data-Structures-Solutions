def sort_itself(array)
  array.each_with_index do |item, idx1|
    idx2 = array.index { |i| i >= item }
    if array[idx2] != item
      array.delete_at(idx1)
      array.insert(idx2, item)
    end
    puts array.join(' ') if idx1 > 0
  end
end

def running_time(array)
  counter = 0
  (1..array.size - 1).each do |num|
    while array[num] < array[num - 1]
      array[num], array[num - 1] = array[num - 1], array[num]
      counter += 1
    end
  end
  counter
end

sort_itself([9, 8, 6, 7, 3, 5, 4, 1, 2])
# =>  8 9 6 7 3 5 4 1 2
#     6 8 9 7 3 5 4 1 2
#     6 7 8 9 3 5 4 1 2
#     3 6 7 8 9 5 4 1 2
#     3 5 6 7 8 9 4 1 2
#     3 4 5 6 7 8 9 1 2
#     1 3 4 5 6 7 8 9 2
#     1 2 3 4 5 6 7 8 9

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
