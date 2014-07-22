require 'matrix'
class VectorSub < Vector

  def calculate_distance(vector2)
    return Math.sqrt((vector2[0] - self[0])**2 + (vector2[1] - self[1])**2)
  end

end
