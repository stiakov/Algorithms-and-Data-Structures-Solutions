def merge_sort(array1, array2)
  merge_in(array1, array2)

end

def merge_in (ar1, ar2)
  output = []
  len = ar1.size
  i, j = 0, 0

  loop do
    break if i > len || j > len

    if i < len && j < len

      if j < len && ar1[i] > ar2[j]
        output << ar2[j]
        j += 1
      else
        output << ar1[i]
        i += 1
      end

    else
        break
    end
  end

  output
end

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])
# [-3, -2, 0, 1, 2, 2, 2, 4, 5, 7]
p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]