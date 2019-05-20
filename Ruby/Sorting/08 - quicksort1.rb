def partition(array)
  pivot = array.first
  lim = array.size - 1
  left = []
  right = []
  1.upto(lim) do |i|
    left << array[i] if array[i] <= pivot
    right << array[i] if array[i] > pivot
  end
  left << pivot
  left + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]