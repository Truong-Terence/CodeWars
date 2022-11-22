def solution(number)
  number < 0 ? 0 : (0..number-1).to_a.select { |n| n%3 == 0 || ( n%5 == 0 && n%3!=0 ) }.sum
end
