# Linked List class
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
end

# Node class
class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end

# Stack Class
class Stack
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @values = []
  end

  def push(data)
    new_node = Node.new(data)
    @values << data
    if @tail.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next = @head
      @head = new_node
    end
  end

  def pop
    return false if @head.nil?

    bye_data = @head.data
    temp = @head.next
    @head = temp
    @tail = nil if @head.nil?
    @values.pop
    bye_data
  end

  def min
    @values.min
  end
end

s = Stack.new
s.push(3)
s.push(5)
puts s.min # 3
s.pop
s.push(7)
puts s.min  # 3
s.push(2)
puts s.min  # 2
s.pop
puts s.min  # 3