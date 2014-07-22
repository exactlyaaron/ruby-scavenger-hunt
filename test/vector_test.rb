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

=begin
  def test_adding_integer_to_vector
    @v = VectorSub[2,2]
    result = VectorSub[1,1] + 1
    assert_equal(@v, result)
  end
=end

  def test_shovel_operator
    @v = VectorSub[2, 2, 1]
    result = VectorSub[2, 2] << 1
    assert_equal(@v, result)
  end

  def test_angle_class_method
    @v1 = VectorSub[2,3]
    @v2 = VectorSub[3,1]
    angle = VectorSub.calculate_angle(@v1, @v2)
    assert_equal(angle, 0.26730477096022687)
  end

  def test_angle_instance_method
    @v1 = VectorSub[2,3]
    @v2 = VectorSub[3,1]
    angle = @v1.calculate_angle(@v2)
    assert_equal(angle, 0.26730477096022687)
  end

end
