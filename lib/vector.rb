class VectorSub < Vector

  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def calculate_distance(end_x, end_y)
    result = Math.sqrt( (end_x - self.x)**2 + (end_y - self.y)**2 )
  end

end
