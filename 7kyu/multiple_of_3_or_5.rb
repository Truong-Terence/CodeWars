def solution(number)
  number < 0 ? 0 : (1...number).to_a.select { |n| n%3 == 0 || ( n%5 == 0 && n%3!=0 ) }.sum
end
