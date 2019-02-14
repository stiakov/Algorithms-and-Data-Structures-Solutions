# LinkedList class
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
end

# Node Class
class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end

# Queue class
class Queue
  attr_accessor :head, :tail

  def initialize
    @queue = LinkedList.new
    @size = 0
  end

  def add(data)
    new_node = Node.new(data)
    @size += 1
    if @queue.head.nil?
      @queue.head = @queue.tail = new_node
    else
      @queue.tail.next = new_node
      @queue.tail = new_node
    end
  end

  def remove
    unless @queue.head.nil?
      bye_data = @queue.head.data
      temp = @queue.head.next
      @queue.head = temp
    end
    @size -= 1
    @queue.tail = nil if @size.zero?
    @size < 0 ? -1 : bye_data
  end
end
