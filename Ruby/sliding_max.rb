def sliding_maximum(k, arr)
  counter = 0
  maximos = []
  max = arr[0]
  idx_ctr = 0
  g_idx = 0

  arr.each do |item|
    counter += 1
    max = item if item >= max
    if counter == k
      maximos << max
      counter -= 1
      idx_ctr = idx_ctr - k + 2 if g_idx == arr.length - 1
      max = arr[idx_ctr]
    end
    idx_ctr += 1
    g_idx += 1
  end
  maximos
end

# def sliding_maximum(k, array)
#   # your code here
#   maxs = []
#   $i = 1
#   max = array[0]
#   count = 1
#   # initial solution 
#   # until $i > array.length - k  do
#   #   maxs.push(array[$i,k].max)
#   #   $i+=1;
#   # end
#   until $i > array.length - 1  do
#     count+=1
#     if max < array[$i]
#       max = array[$i]
#     end
#     if $i == array.length-1
#       maxs.push(max)
#       break
#     elsif count == k 
      
#       maxs.push(max)
#       max = array[$i-k+2]
#       $i = $i -k+2
#       count = 1
#     end
#     $i+=1
#   end
#   return maxs
# end

puts sliding_maximum(4, [9, 3, 5, 1, 7, 10])
puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])

puts 'fin'
