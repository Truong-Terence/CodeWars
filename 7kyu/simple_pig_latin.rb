# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

def pig_it text
  result = []
  text.split().each do |word|
    if (word.match?(/[[:alpha:]]/))
      w = word.split("")
      w = w.insert(-1, w.delete_at(0)).join() + "ay"
    else
      w = word
    end
    result << w
  end
  result.join(" ")
end


# Exemple online :
# text.gsub(/(\w)(\w+)*/, '\2\1ay')
