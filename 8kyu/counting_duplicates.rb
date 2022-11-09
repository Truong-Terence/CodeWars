def duplicate_count(text)
  counter = 0
  text.downcase.split("").tally.each_value do |value|
    if (value > 1)
      counter += 1
    end
  end
  counter
end

# Shorter solution from CW
# ('a'..'z').count { |c| text.downcase.count(c) > 1 }
