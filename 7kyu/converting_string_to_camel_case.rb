def to_camel_case(str)
  if (str == "")
    ""
  else
    a = str.split(/[-,_]/).first
    b = str.split(/[-,_]/).slice(1..-1).map { |s| s.capitalize }.join
    a + b
  end
end
