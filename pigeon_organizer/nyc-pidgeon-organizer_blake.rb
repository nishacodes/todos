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
new_pigeon = {}
pigeon_data.each_pair do |key, value|
  # keys color, gender, lives
  # value => {
  #   :purple => ["Theo", "Peter Jr.", "Lucky"],
  #   :grey => ["Theo", "Peter Jr.", "Ms .K"],
  #   :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
  #   :brown => ["Queenie", "Alex"]
  # }
  value.each_pair do |attribute, name_array|
    # attribute => purple, grey
    # name array => ["Theo", "Peter Jr.", "Lucky"]
    name_array.each do |name|
      # "theo"
      if new_pigeon[name].nil?
        new_pigeon[name] = {}
      end
      # new_pigeon = {"theo" => {:color => []}}
      if new_pigeon[name][:color].nil?
        new_pigeon[name][:color] = []
      end
      if key == :color
        new_pigeon[name][key] << attribute
      else
        # name => "theo", "key" => gender or lives, "attribute" => "male", female, subway
        new_pigeon[name][key] = attribute
      end
    end
  end
end
puts new_pigeon