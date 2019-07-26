def time_scheduler(array)
  bloc = sort_io(array)
  out = [bloc.first]
  i = 0

  while i < bloc.size - 1
    item1 = bloc[i]
    item2 = bloc[i + 1]
    condition = item1[1] <= item2[0] || out.last[1] < item2[0]

    out << item2 if condition
    i += 1
  end

  out
end

def sort_io(array)
  array.each_slice(2).sort_by{ |_x, y | y }
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
p time_scheduler([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])
# => [1, 2], [4, 5], [8, 14]
p time_scheduler([2, 6, 5, 10, 7, 12, 0, 9, 4, 8])
# => [[2, 6], [7, 12]]