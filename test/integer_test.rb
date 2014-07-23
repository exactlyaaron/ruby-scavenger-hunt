require 'test_helper'
require 'factors'

class IntegerTest < MiniTest::Unit::TestCase

  # def setup
  #   # This is ran before all the tests. Useful
  #   # when preparing input data for the objects/methods you
  #   # wish to test.
  # end

  def test_factors_method
    array = 12.factors
    assert_equal(array, [2,3])
  end

  def test_factors_method_again
    array = 145.factors
    assert_equal(array, [5,29])
  end

end
