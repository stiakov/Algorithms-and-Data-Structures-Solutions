require 'minitest/autorun'
require '../sliding_max.rb'

class TestingQueues < MiniTest::Test

  def test_sliding_max
    res = sliding_maximum(4, [9, 3, 5, 1, 7, 10])
    assert_equal([9, 7, 10], res)
    
    res = sliding_maximum(3, [1, 3, 5, 7, 9, 2])
    assert_equal([5, 7, 9, 9], res)
    
    res = sliding_maximum(2, [12, 33, 15, 0, 19, 22, 19, 18, 42, 14])
    assert_equal([33, 33, 15, 19, 22, 22, 19, 42, 42], res)
    
    res = sliding_maximum(4, [12, 33, 15, 0, 19, 22, 19, 18, 42, 14, 51, 7])
    assert_equal([33, 33, 22, 22, 22, 42, 42, 51, 51], res)
    
    res = sliding_maximum(4, [2, 7, 8, 3, 12, 19, 1, 9, 5])
    assert_equal([8, 12, 19, 19, 19, 19], res)
    
    res = sliding_maximum(3, [2, 7, 8, 13, 12, 19, 1, 9, 21])
    assert_equal([8, 13, 13, 19, 19, 19, 21], res)
  end
end
