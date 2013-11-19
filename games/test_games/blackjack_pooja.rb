def deal_cards
  1 + rand(11)  
end

def player_total
  points = []
  points << deal_card
  points << deal_card
  total_points = points.reduce(:+) 
  puts total_points
end

def hit
  if player_total < 21
    puts "want to hit or stay?"
    player_choice = gets.chomp.lower
    if player_choice == "yes" || "hit" || "hit me"
      deal_cards
    else
      "Sorry, you lost."
    end
  end
end

def did_win
  if total == 21
    puts "You've won!"
  else
    puts "Sorry, you lost."
end