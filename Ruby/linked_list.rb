# Node Class
class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end
end

# LinkedList Class
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
