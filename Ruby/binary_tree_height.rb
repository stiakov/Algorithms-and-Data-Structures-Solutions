def tree_height(tree_as_list)
  step = 1
  max = 1
  ctr = 0

  if tree_as_list.empty?
    max = 0
  else
    until ctr.nil?
      ctr = tree_as_list[(step * 2) + 1]
      unless ctr.nil?
        step *= 2
        max += 1
      end
    end
  end
  max
end

# def tree_height(tree_as_list)
#   step = 1
#   if tree_as_list.empty?
#     max = 0
#   else
#     r_height = 0
#     l_height = 0
#     max = 0

#     until step.nil?

#       l_height = !tree_as_list[(step * 2) + 1].nil? ? l_height + 1 : l_height
#       r_height = !tree_as_list[(step * 2) + 2].nil? ? r_height + 1 : r_height
#       l_step_ctr = tree_as_list[(step * 2) + 1]
#       r_step_ctr = tree_as_list[(step * 2) + 2]

#       step = !l_step_ctr.nil? && !r_step_ctr.nil? ? step *= 2 : nil
#     end
#     max = l_height > r_height ? l_height : r_height
#   end

#   max + 1
# end

puts tree_height([2, 7, 5, 2, 6, 0, 9]) # => 3
puts tree_height([10, 20, 10, 30, 20, 40, 20, 60]) # => 3
puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0]) # => 4
puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0]) # => 4
puts tree_height([3, 5, 9, 6, 8, 20, 10, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0]) # => 4
puts 'end'