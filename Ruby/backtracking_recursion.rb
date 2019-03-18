#MODEL SOLUTION
def exact_sum?(k, coins)
  subset_sum?(k, coins, 0)
end

def exact_sum?(k, coins)
  return true if k == 0
  return false if coins.empty? || k < 0
  
  exact_sum?(k-coins[0], coins[1..-1]) || exact_sum?(k, coins[1..-1])
end


puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false

puts exact_sum?(42, [3, 16, 11, 5, 11, 5])
# => false

puts exact_sum?(51, [8, 12, 15, 7, 11, 14])
# => false

puts exact_sum?(50, [1, 3, 5, 37, 18, 5])
# => true

puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
# => true
