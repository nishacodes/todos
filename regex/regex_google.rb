 
# match all URLS  *.google.*, google.*, but NOT plus.google.* or *.plus.google.*

# solution: /(?<!plus)[.]*google./
# this still matches the .google. part even if there is a plus. should it not?


/(?<!plus)[.]*google./.match(".google.") # => <MatchData ".google.">

/(?<!plus)[.]*google./.match("google.") # => <MatchData "google.">

/(?<!plus)[.]*google./.match("www.google.com") # => <MatchData ".google.">

/(?<!plus)[.]*google./.match("http://www.google.com/mail/etc") # => <MatchData ".google.">

/(?<!plus)[.]*google./.match("plus.google.") # => <MatchData ".google.">

/(?<!plus)[.]*google./.match(".plus.google.") # => <MatchData "google.">

