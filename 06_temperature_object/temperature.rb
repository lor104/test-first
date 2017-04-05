# f_to_c = (f - 32) * 5/9
# c_to_f = (c * 9/5) + 32


class Temperature

  attr_reader :temp

  def initialize(temp)
    @temp = temp
  end

  def to_celsius
    array = self.temp.keys
    if array.include?(:c)
      return self.temp[:c]
    end
    self.temp[:f] = (self.temp[:f] - 32) * 5.0/9
  end

  def to_fahrenheit
    array = self.temp.keys
    if array.include?(:f)
      return self.temp[:f]
    end
    self.temp[:c] = (self.temp[:c] * 9.0/5) + 32
  end

  def self.in_fahrenheit(temp_new)
    temperature = self.new({:f => temp_new})
  end

  def self.in_celsius(temp_new)
    temperature = self.new({:c => temp_new})
  end

end


class Celsius < Temperature
  def initialize(temp)
    @temp = {:c => temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {:f => temp}
  end
end

#irb code tests
 # array = self.temp.keys
 # array.include?(:c)
