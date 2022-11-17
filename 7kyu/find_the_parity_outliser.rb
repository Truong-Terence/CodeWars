def find_outlier(integers)
  even = 0
  odd = 0
  outlier = ""
  integers.each do |i|
    i.even? ? even += 1 : odd += 1
  end
  even < odd ? integers.select {|n| n.even? }.join.to_i : integers.select {|n| n.odd? }.join.to_i
end
