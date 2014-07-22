require 'test_helper'

class VectorTest < MiniTest::Unit::TestCase

  # def setup
  #   # This is ran before all the tests. Useful
  #   # when preparing input data for the objects/methods you
  #   # wish to test.
  # end

  def test_vector_creation
    @vector = VectorSub[1,1]
    assert_equal(1, @vector[0])
    assert_equal(1, @vector[1])
  end

  def test_distance_calculation
    @vector1 = VectorSub[1,1]
    @vector2 = VectorSub[0,1]
    distance = @vector1.calculate_distance(@vector2)
    assert_equal(1, distance)
  end

  def test_pathlength_calculation
    @vector1 = VectorSub[1,1]
    @vector2 = VectorSub[1,2]
    @vector3 = VectorSub[1,3]
    length = VectorSub.pathlength(@vector1, @vector2, @vector3)
    assert_equal(2, length)
  end

end
