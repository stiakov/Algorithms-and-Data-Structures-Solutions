def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  return number if number.zero? || number == 1

  mid = (min_interval + max_interval) / 2
  return mid if mid * mid == number

  if mid * mid < max_interval
    min_interval = mid + 1
  else
    max_interval -= 1
  end
  sqrt_recursive(number, min_interval, max_interval)
end


# puts sqrt(3)
puts sqrt(25)
puts sqrt(7056)
