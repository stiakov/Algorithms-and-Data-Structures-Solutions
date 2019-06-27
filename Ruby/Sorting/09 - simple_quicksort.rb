# frozen_string_literal: true

def simple_quicksort(array)
  partition array
end

def partition(array)
  i = 0
  out = ['x']
  a = []
  b = []

  pivot = array.first

  return pivot if array.size < 2

  array[1..-1].each do |elem|
    if elem < pivot
      out.unshift(elem)
      i += 1
    else
      out << elem
    end
  end

  out[i] = pivot

  a << partition(out[0...i].reverse)
  b << partition(out[(i + 1)..-1])

  merge(a + [pivot] + b)
end

def merge(array)
  puts array.flatten.compact.join(' ') if array.size > 1
  array.flatten.compact if array.size > 1
end
p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10