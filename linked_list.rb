class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail, :size
  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def add(data)
    if @head.nil?
      @head = Node.new(data)
      @tail = @head
    else
      @tail.next = Node.new(data)
      @tail = @tail.next
    end
    @size += 1
  end

  def get(index)
    current = @head
    count = 0
    until current.nil?
      return current.data if count == index

      current = current.next
      count += 1
    end
  end

  def get_node(index)
    current = @head
    count = 0
    until current.nil?
      return current if count == index

      current = current.next
      count += 1
    end
    nil
  end

  def add_at(index, data)
    new_node = Node.new(data)
    @size += 1

    return new_node.next = @head, @head = new_node if index.zero?
    return @head.new_node if @head.nil?

    post = get_node(index)
    new_node.next = post

    counter = 0
    pointer = @head
    while counter <= index
      return pointer.next = new_node if counter == index - 1

      pointer = pointer.next
      counter += 1
    end
  end

  def remove(index)
    pre = get_node(index - 1)
    post = get_node(index + 1)
    pre.next = post
    @size -= 1

  end
end

class Stack
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def push(data)
    new_item = Node.new(data)
    if @tail.nil?
      @head = new_item
      @tail = new_item
    else
      new_item.next = @head
      @head = new_item
    end
  end

  def pop
    return false if @head.nil?

    bye_data = @head.data
    temp = @head.next
    @head = temp
    @tail = nil if @head.nil?
    bye_data
  end
end

class Lista
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
end

class Queue
  attr_accessor :head, :tail

  def initialize
    @queue = Lista.new
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

stack = Stack.new

stack.push(3)
stack.push(5)
puts stack.min

stack.pop
stack.push(7)
puts stack.min

stack.push(2)
puts stack.min

stack.pop
puts stack.min

s = Stack.new
s.push(17)
s.push(7)
s.push(23)
s.push(2)
puts s.min
puts s.pop
puts s.min

puts 'aqui acaba'
