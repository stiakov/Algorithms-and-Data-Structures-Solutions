def merge_sort(ar1, ar2)
  output = []
  len = ar1.size
  i, j = 0, 0

  while i < len && j < len do
    if ar1[i] > ar2[j]
      output << ar2[j]
      j += 1
    else
      output << ar1[i]
      i += 1
    end
  end

  output += ar1[i..-1] if i < len
  output += ar2[j..-1] if j < len

  output
end

p merge_sort([21, 32, 45, 62, 71, 83], [1, 3, 4, 7, 9, 12])
# [1, 3, 4, 7, 9, 12, 21, 32, 45, 62, 71, 83]
p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])
# [-3, -2, 0, 1, 2, 2, 2, 4, 5, 7]
p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]