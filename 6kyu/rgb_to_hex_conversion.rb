def rgb(r, g, b)
  case
    when r < 0
      r = 0
    when r > 255
      r = 255
    else
      r
  end

  case
    when g < 0
      g = 0
    when g > 255
      g = 255
    else
      g
  end

  case
    when b < 0
      b = 0
    when b > 255
      b = 255
    else
      b
  end

  r = r.to_s(16).rjust(2,'0').upcase
  g = g.to_s(16).rjust(2,'0').upcase
  b = b.to_s(16).rjust(2,'0').upcase

  r+g+b
end
