# Partial Solution

def exact_sum?(k, coins)
  full_sum = coins.reduce(0, :+)
  return true if k == full_sum

  output = backtracking_sum(k, coins, 0, full_sum)
end

def backtracking_sum(result, array, start, total)
  n = (array.length - 1)

  return false if start == n + 1

  if total > result
    total -= array[start]
    return true if total == result

    backtracking_sum(result, array, start + 1, total)
  elsif total < result
    total += array[start]
    return true if total == result

    backtracking_sum(result, array, start - 1, total)
  end
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false

puts  exact_sum?(42, [3, 16, 11, 5, 11, 5])
# => false

puts exact_sum?(51, [8, 12, 15, 7, 11, 14])
# => false

puts exact_sum?(50, [1, 3, 5, 37, 18, 5])
# => true

puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
# => true