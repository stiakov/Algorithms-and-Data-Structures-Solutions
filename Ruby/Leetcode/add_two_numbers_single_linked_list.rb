class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  data1 = l1
  data2 = l2
  out = []
  temp1, temp2 = [], []
  until data1.nil? || data2.nil?
    temp1 << data1.val
    temp2 << data2.val
    data1 = data1.next
    data2 = data2.next
  end
  out << (temp1.reverse.join.to_i)
  out << (temp2.reverse.join.to_i)
  # node =
  #
  #     out.sum.to_s.split('').each { |i|
  #       node.val = ListNode.new(i)
  #       node.next = ListNode.new(0)
  #       node = node.next
  #       p node
  #     }
  # node
end

a = [8, 0, 7]
temp = []
a.reverse.each do |num|
  node = ListNode.new(num)
  node.next = ListNode.new(nil)
  temp << node
end
p temp
ok = temp[0]

temp[1...-1].each_with_index { |node, idx| node.next = temp[idx + 1] }
p temp.size
p '======'
p ok