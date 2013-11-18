########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeon_list = {}


# Two blocks to gather all the names in the pigeon_list (male and female would capture all the pigeons)
pigeon_data[:gender][:male].each do |name|
  pigeon_list[name] = {}
end

pigeon_data[:gender][:female].each do |name|
  pigeon_list[name] = {}
end

# STATE: now pigeon_list is a hash with a list of names, each of which is an empty hash
# for each name, create a key value pair :color => []
pigeon_list.each do |name, hash|
  hash[:color]= []
end

# adds the colors into the array for :color in the form of strings
pigeon_list.each do |name, hash|
  pigeon_data[:color].each do |color, namesarray|
    if namesarray.include? name
      hash[:color] << color.to_s
    end
  end
end

# STATE: each pigeon hash has :color => [] with all the colors filled in
# The following cycles through each gender array, if it finds the name, 
# it will set that name equal to the pigeon_list gender in the form of a string
pigeon_list.each do |name, hash|
  pigeon_data[:gender].each do |gender, namesarray|
    if namesarray.include? name
      hash[:gender] = gender.to_s
    end
  end
end

# STATE: each pigeon hash has :color and :gender filled in
# fills in the location of each name
pigeon_list.each do |name, hash|
  pigeon_data[:lives].each do |location, namesarray|
    if namesarray.include? name
      hash[:lives] = location
    end
  end    
end

# STATE: each pigeon hash has :color => [], and :gender, and :location filled in

puts pigeon_list

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }
