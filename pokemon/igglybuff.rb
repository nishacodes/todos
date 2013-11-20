class Igglybuff
	attr_reader :female_ratio, :male_ratio
	attr_accessor :level, :type, :abilities, :catch_rate, :entry, :hp, :exp, :friendship

	# LEARNSET = {  "Sing" => "Start",
 #                "Charm" => "Start",
 #                "Defense Curl" => 5,
 #                "Pound" => 9,
 #                "Sweet Kiss" => 13,
 #                "Copycat" => 17 }

  def initialize
    @level = 5 
    @type = ["Normal","Fairy"]
    @abilities = ["Cute Charm", "Competitive", "Friend Guard"]
    @catch_rate = .222
    @female_ratio = .75
    @male_ratio = 1 - @female_ratio
    @entry = "Instead of walking with its short legs, it moves around by bouncing on its soft, tender body."
    @hp = 90
    @exp = 42
    @friendship = 70
    @link = 0 # igglybuff needs a link of at least 50% to evolve into jigglypuff
  end

  def level_up
    if exp > level**3
      level += 1
  end

  def gain_exp new_exp
    exp += new_exp
  end

  def say_name
    "Igglybuff!"
  end

  def evolve

  end
end