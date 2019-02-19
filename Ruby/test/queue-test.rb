require 'minitest/autorun'
require '../queue.rb'

class TestingQueues < MiniTest::Test
  def test_init_returns_class
    q = Queue.new
    assert_instance_of(Queue, q)
  end
  
  # def test_init_vars_defaults
  #   s = MyStack.new
  #   assert_nil(s.head)
  #   assert_nil(s.min_stack)
  #   assert_equal(0, s.size)
  # end
  
  def test_add
    q = Queue.new
    q.add(1)
    assert_equal(1, q.queue.head.data)
    assert_equal(1, q.size)
    assert_equal(q.queue.tail, q.queue.head)
  end

  def test_add_many
    q = Queue.new
    5.times do |i|
      q.add(i)
      assert_equal(i, q.queue.tail.data)
      assert_equal(i + 1, q.size)
    end
  end

  def test_remove
    q = Queue.new
    q.add(7)
    assert_equal(7, q.remove)
  end
  
  def test_remove_many
    q = Queue.new
    q.add(7)
    q.add(12)
    q.add(1)
    q.add(6)
    q.remove
    q.remove
    q.remove
    res = q.remove
    assert_equal(6, res)
    assert_nil(q.queue.tail)
    assert_equal(-1, q.remove)
  end
end
