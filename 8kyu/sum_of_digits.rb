def digital_root(n)
  # n = 1 + 2 + 3 + 4
  while n > 9
    n = n.to_s.split('').map(&:to_i).sum
    # n = 1 + 2 + 3 + 4 = 10
  end
  n
end

# Shorter solution from CW
# n < 10 ? n : digital_root(n.digits.sum)
