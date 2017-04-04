def translate(message)

#if word starts with a vowel:
  if message[0] == "a" || message[0] == "e" || message[0] == "i" || message[0] == "o" || message[0] == "u"
    message += "ay"
  else
#if first letter starts with a consonant:
    first_letter = message[0]
    message = message.reverse
    message = message.chop.reverse
    message = message + first_letter + "ay"
  end



end
