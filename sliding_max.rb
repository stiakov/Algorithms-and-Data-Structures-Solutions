def sliding_maximum(k, arr)
  counter = 0
  maximos = []
  max = arr[0]

  arr.each do |item|
    counter += 1
    max = item if item >= max
    maximos << max if counter == k
    counter -= 1 if counter == k
  end
  maximos
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
