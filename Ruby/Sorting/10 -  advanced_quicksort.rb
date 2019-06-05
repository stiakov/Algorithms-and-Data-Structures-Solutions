def advanced_quicksort(array)
  partition(array)

end

def partition (arr, idxs = ['x'], origin = [])
  return if arr.size < 2
  pivot = arr.last
  i, j = 0, 1
  greater = []

  while j < arr.size - 1
    l = arr[i]
    r = arr[j]
    idxs << i if l < pivot
    greater << j if r > pivot
    swap(arr, i, j) if r < l
    swap(arr, j, i) if r < l


    i = idxs.last + 1
    j += 1
  end
  origin << arr
  arr.insert(idxs.last + 1, arr.pop) unless idxs.empty?
  partition(arr[0..idxs.last], idxs, origin)
  p merge(origin, arr, 0)
  partition(arr[(idxs.last)..-1], idxs, origin)
  p merge(origin, arr, idxs.last + 2)
end

def merge(origin, arr, idx)
  sz = arr.size

  arr.size.times do |i|
    origin[0][idx] = arr[i]
    idx += 1
  end
  p = "merge"
  origin
end

def swap (array, idx1, idx2)
  array[idx1], array[idx2] = array[idx2], array[idx1]
end


advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
