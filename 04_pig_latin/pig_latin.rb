
def move_first_letter(message)
  first_letter = message[0]
  message.reverse!
  message = message.chop
  message = message.reverse! + first_letter
  return message
end


# def translate(message)
#   vowels = ["a", "e", "i", "o", "u", "y"]
#   # constonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
#
#   until vowels.include?(message[0])
#     message = move_first_letter(message)
#   end
#
#
# #if word starts with a vowel:
#   if vowels.include?(message[0])
#     message += "ay"
#   elsif (message[0] + message[1] = "qu")
# # if word starts with "qu"
#     message = message.move_first_letter(message)
#     message = move_first_letter(message) + "ay"
#   elsif !vowels.include?(message[0])
# #if first letter starts with a consonant:
#     message = move_first_letter(message) + "ay"
#   end
# end


def translate(message)
  #within translate
  #split the stirng into words
  #for each word, apply the translate word method
  #shovel each word into a new array
  #join array with space between each word
  final = []
  message.split.each do |word|
    final << translate_word(word)
  end
  final_message = final.join(" ")
  return final_message
end

def translate_word(word)
  #repeat until a vowel is the first letter
  #move the first letter to the end
  #if message starts with qu, move the qu to the end
  #for all, add "ay"
  vowels = ["a", "e", "i", "o", "u", "y"]

  while !vowels.include?(word[0])
    if word[0,2] == "qu"
      word = move_first_letter(word)
      word = move_first_letter(word)
    else
      word = move_first_letter(word)
    end
  end
  word += "ay"
end

# string = queen
# string[0,2] = qu
