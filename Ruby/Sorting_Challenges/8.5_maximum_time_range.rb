def maximum_time_range(array)
  bloc = sort_io(array)
  max_ranges(bloc, 0)
end

def sort_io(array)
  array.each_slice(2).sort_by{ |x, y | x }
end

def max_ranges(blocs, out = [], idx)
  return if idx == blocs.size - 1

  overlapped = true

  from = blocs[idx][0]
  to = blocs[idx][1]

  while overlapped
    break if idx == blocs.size - 1

    item1 = blocs[idx]
    item2 = blocs[idx + 1]

    final_eval = item1[0] < item2[0] && item1[1] < item2[1] if idx == blocs.size - 2
    overlapped = item1[1] >= item2[0] || final_eval

    if overlapped
      to = item2[1] if item2[1] > to
      out << [from, to] if idx == blocs.size - 2
    else
      out << [from, to]
    end

    idx += 1
  end

  max_ranges(blocs, out, idx)
  out.flatten! if out.size == 1
  out
end

p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]
p maximum_time_range([11, 12, 4, 7, 14, 16, 0, 2, 13, 15, 8, 10])
# [[0, 2], [4, 7], [8, 10], [11, 12], [13, 16]]
p maximum_time_range([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])
# [[0, 1], [3, 16]]
p maximum_time_range([5, 14, 1, 4, 13, 19, 3, 6, 9, 8])
# [1, 19]
#
# def maximum_time_range(array)
#   bloc = sort_io(array)
#   max_ranges(bloc, 0)
# end
#
# def sort_io(array)
#   array.each_slice(2).sort_by{ |x, y | y }
# end
#
# def max_ranges(blocs, out = [], idx)
#
#   return if idx == blocs.size - 1
#   overlapped = true
#
#   from = blocs[idx][0]
#   to = blocs[idx][1]
#
#   while overlapped
#     break if idx == blocs.size - 1
#
#     item1 = blocs[idx]
#     item2 = blocs[idx + 1]
#
#     overlapped = item1[1] >= item2[0] # || item1[1] > item2[1] || item1[0] > item2[0]
#
#     if overlapped && item2[1] > item1[0]
#       to = item2[1] if item2[1] > to
#       out << [from, to] if idx == blocs.size - 2
#     else
#       out << [from, to]
#     end
#
#     idx += 1
#   end
#
#   max_ranges(blocs, out, idx)
#   out
# end