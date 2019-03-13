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