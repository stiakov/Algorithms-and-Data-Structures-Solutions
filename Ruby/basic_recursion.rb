def sum(number)
  number == 1 ? 1 : number + sum(number - 1)
end

puts sum(4)
puts sum(10)
