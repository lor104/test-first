require 'pry'
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  total = 0
  array.each do |num|
    total += num
  end
  total
end
