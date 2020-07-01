def two_sum(nums, target)
  collect = {}
  nums.each_with_index do |key, idx|
    if collect[key].nil?
      collect[key] = { val: key, index: [idx] }
    else
      collect[key][:index] << idx
    end
  end

  collect.each do |key, elem|
    expected = target - key
    next unless collect[expected]

    if elem[:index].size > 1 && expected == key
      out = [elem[:index][0], collect[expected][:index][1]]
    else
      next if expected == key && collect[expected][:index].size == 1

      out = [elem[:index][0], collect[expected][:index][0]]
    end
    return out
  end
end

p two_sum([7, 9, 12], 21) # [1, 2]
p two_sum([7, 12, 9, 12], 24) # [1, 3]
p two_sum([2, 7, 11, 15], 9) # [0, 1]
p two_sum([3, 2, 4], 6) # [1, 2]