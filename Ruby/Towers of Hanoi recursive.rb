def hanoi_steps(number_of_discs, start = 1, aux = 2, last = 3)
  if number_of_discs > 0
    hanoi_steps(number_of_discs - 1, start, last, aux)
    puts "#{start}->#{last}"
    hanoi_steps(number_of_discs - 1, aux, start, last)
  end 
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2 
#    1->3 
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3


=begin
  
MODEL SOLUTION

def hanoi_steps(number_of_discs)
  # your code here
  step(number_of_discs, 1, 2, 3)
end

def step(number_of_discs, starting, intermediate, goal)
  if number_of_discs == 1
    puts move(starting, goal)
  else
    step(number_of_discs-1, starting, goal, intermediate)
    puts move(starting, goal)
    step(number_of_discs-1, intermediate, starting, goal)
  end
end

def move(starting, goal)
  "#{starting}->#{goal}"
end
  
=end