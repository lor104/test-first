# f_to_c = (f - 32) * 5/9
# c_to_f = (c * 9/5) + 32


class Temperature

  attr_reader :temp

  def initialize(temp)
    @temp = temp
  end

  def to_celsius
    self.temp[:f] = (self.temp[:f] - 32) * 5.0/9
  end

  def to_fahrenheit
    self.temp[:c] = (self.temp[:c] * 9.0/5) + 32
  end

  def in_fahrenheit(temp_new)
    temperature = self.new({:f => temp_new})
  end

  def in_celsius(temp_new)
    temperature = self.new({:c => temp_new})
  end

end


class Celcius < Temperature

end

class Fahrenheit < Temperature
  
end
