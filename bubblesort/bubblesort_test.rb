require 'minitest/autorun'
require_relative 'bubblesort'

class BubbleSortTest<MiniTest::Test
  
  def test_predefined_answers_is_array
    fcn = BubbleSort.new
    result = fcn.sort([4,3,78,2,0,2,15,7, 10,-5,4,100,0])
    assert_equal [-5, 0, 0, 2, 2, 3, 4, 4, 7, 10, 15, 78, 100], result
  end
end
