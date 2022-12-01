# Selecting http and https => //
# And
# Selecting www.
# And
# Selecting what is after "."
# .. Replace by nothing

def domain_name(url)
  url.gsub(/(http.*\/\/)|(www\.)|(\..*)/, "")
end
