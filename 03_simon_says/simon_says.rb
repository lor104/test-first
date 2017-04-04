require 'pry'
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def start_of_word(string, num)
  characters = num-1
  string[0..characters]
end

def repeat(string, num = 2)
  array = []
  num.times do |count|
    array << string
  end
  array.join(" ")
end

def first_word(string)
  array = string.partition(" ")
  array[0]
end

def titleize(string)
  # string.titleize
  new_string = []
  s = string.split
  s.each do |word|
    new_word = word.capitalize
    if  word == "the" || word == "to" || word == "a" || word == "over" || word == "from" || word == "is" || word == "and"
      new_word = new_word.downcase
    end
    new_string << new_word
  end


  # s[0] = s[0].capitalize
  final = new_string.join(" ")
  # first = first_word(final).capitalize
  final[0] = final[0].capitalize
  final
end
