require 'matrix'

class VectorSub < Vector
  def calculate_distance(v)
    Math.sqrt((v[0] - self[0])**2 + (v[1] - self[1])**2)
  end

  def self.pathlength(*points)
    total = 0
    # points.sort! { |x,y| x[0] <=> y[0] }
    (points.length - 1).times do |i|
      total += points[i].calculate_distance(points[i+1])
    end
    total
  end
end
