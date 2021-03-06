require_relative "./test/queue-test.rb"
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
    @min = nil
    @last_min
  end

  def push(data)
    new_node = Node.new(data)
    if @tail.nil?
      @head = new_node
      @tail = new_node
      @min = data
    else
      new_node.next = @head
      @head = new_node
    end
    @last_min = @min
    @min = data if data < @min
  end

  def pop
    return false if @head.nil?

    bye_data = @head.data
    @min = @last_min if bye_data == @min
    
    temp = @head.next
    @head = temp
    @tail = nil if @head.nil?
    bye_data
  end

  def min
    @min
  end
end

s = Stack.new
s.push('nested 3')
s.push('nested 2')
s.push('nested 1')
puts s.min # 3
s.pop
s.push('head-node')
puts s.min  # 3
s.push(2)
puts s.min  # 2
s.pop
puts s.min  # 3