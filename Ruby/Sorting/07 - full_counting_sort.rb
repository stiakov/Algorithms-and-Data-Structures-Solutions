def full_counting_sort(array)
  counter = Array.new(100, 0)
  array.each do |val|
    idx = val.split(' ')[0].to_i
    counter[idx] += 1
  end

  out = []
  counter.each_with_index do |elem, idx|
    next if elem.zero?

    out << array.select { |i| i.split(' ')[0].to_i == idx}
  end
  out.flatten!.each_with_index {|item, idx| out[idx] = item.split(' ')[1] }
end

p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"