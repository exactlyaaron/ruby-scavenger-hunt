require 'matrix'

class VectorSub < Vector
  def calculate_distance(v)
    Math.sqrt((v[0] - self[0])**2 + (v[1] - self[1])**2)
  end

  def self.pathlength(*points)
    if points.length < 1
      return nil
    end

    total = 0
    # points.sort! { |x,y| x[0] <=> y[0] }
    (points.length - 1).times do |i|
      total += points[i].calculate_distance(points[i+1])
    end
    total
  end

  def <<(integer)
    VectorSub.elements(self.to_a << integer)

    # array = []
    # self.each do |int|
    #   array << int
    # end
    # array << integer
    # VectorSub.[](*array)
  end

  def self.calculate_angle(v1, v2)
    hypotenus1 = Math.sqrt(v1[0]**2 + v1[1]**2)
    hypotenus2 = Math.sqrt(v2[0]**2 + v2[1]**2)

    angle1 = Math::acos(v1[0] / hypotenus1)
    angle2 = Math::acos(v2[0] / hypotenus2)

    radians = (angle1 - angle2).round(10)
  end

  def calculate_angle(v2)
    hypotenus1 = Math.sqrt(self[0]**2 + self[1]**2)
    hypotenus2 = Math.sqrt(v2[0]**2 + v2[1]**2)

    angle1 = Math::acos(self[0] / hypotenus1)
    angle2 = Math::acos(v2[0] / hypotenus2)

    radians = (angle1 - angle2).round(10)
  end
end
