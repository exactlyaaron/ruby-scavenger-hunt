require 'prime'
class Integer

  def factors
    array = []
    self.times do |i|
      if (i > 1) && (self % i == 0) && i.prime?
        array << i
      end
    end
    array
  end

end
