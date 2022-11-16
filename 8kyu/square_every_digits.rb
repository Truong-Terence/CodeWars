def square_digits num
  num.to_s.split("").map { |n| (n.to_i)*(n.to_i) }.join("").to_i
end
