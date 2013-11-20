class Spritzee
  attr_reader :female_ratio
  attr_accessor :level, :leveling_rate, :type, :abilities, :catch_rate, :entry, :hp, :exp, :friendship

  LEARNSET = {  "Growth" => "Start",
                "Leech Seed" => "Start",
                "Mega Drain" => "Start",
                "Cotton Spore" => "Start",
                "Gust" => 10,
                "Tailwind" => 28,
                "Hurricane" => 46 }

  def initialize
    # @level = ?
    @leveling_rate = "medium fast"
    @type = ["Fairy"]
    @abilities = ["Healer","Aroma Veil"]
    @catch_rate = 0.0
    # @female_ratio = 0.50
    # @entry = "Whimsicott can pass through the tiniest cracks like the wind, leaving fluffy white puffs in its wake."
    # @hp = 60
    # @exp = 168
    # @friendship = 70
  end

  # def level_up
  #   if exp > level**3
  #     level += 1
  #   end
  # end

  # def gain_exp new_exp
  #   exp += new_exp
  # end

  # def say_name
  #   "Whimsicott!"
  # end

  
end

