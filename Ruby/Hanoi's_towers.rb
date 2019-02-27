def move(starting, goal)
  inter = 3 if starting == 1 && goal == 2
  inter = 2 if starting == 1 && goal == 3
  inter = 3 if starting == 2 && goal == 1
  inter = 1 if starting == 2 && goal == 3
  inter = 2 if starting == 3 && goal == 1
  inter = 1 if starting == 3 && goal == 2

  "#{starting}->#{inter} #{starting}->#{goal} #{inter}->#{goal}"
end

# def move(starting, goal)
#   intermediate = (1..3).find { |n| n != starting && n != goal }
#   "#{starting}->#{intermediate} #{starting}->#{goal} #{intermediate}->#{goal}"
# end

puts move(1, 3) # => 1->2 1->3 2->3

puts move(2, 3) # => 2->1 2->3 1->3
