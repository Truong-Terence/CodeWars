# Create a function that takes a list of non-negative integers and strings
# and returns a new list with the strings filtered out.

def filter_list(l)
l.select{|i| i.is_a?(Integer)}
end
