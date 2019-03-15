# Partial Solution

def exact_sum?(k, coins)
  total = 0
  (0..coins.length - 1).each { |i| total += coins[i] }
  return true if k == total

  output = backtracking_sum(k, coins, 0)
end

def backtracking_sum(result, array, start)
  n = (array.length - 1)
  sum = 0

  return false if start == n + 1

  (start..n).each do |i|
    sum += array[i]
    return true if sum == result

    break if sum > result
  end
  backtracking_sum(result, array, start + 1)
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false

puts exact_sum?(50, [1, 3, 5, 37, 18, 5])
# => true

puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
# => true