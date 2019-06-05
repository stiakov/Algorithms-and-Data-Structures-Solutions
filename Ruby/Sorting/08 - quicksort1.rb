def partition(array)
  pivot = array.first
  left = []
  right = []
  array[1..-1].each do |i|
    if i < pivot
      left << i
    else
      right << i
    end
  end

  (left + [pivot] + right)
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]