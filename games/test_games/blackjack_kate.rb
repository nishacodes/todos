
  def total(number)
    number.compact.reduce(:+)
  end

  def hit?(an_array, index)
    puts "Would you like to hit or stay? (h or s)"
    hit_or_not = gets.chomp
    if hit_or_not == "s"
      puts "Cool."
      an_array << 0
      puts "Your total is #{total(an_array)}."
    elsif hit_or_not == "h"
      an_array << rand(1..11)
      puts "Your card is #{an_array[index]}"
      puts "Your total is #{total(an_array)}."
    else
      puts "you broke the game!"
    end
  end

  puts "Welcome to Blackjack."
  cards = [ rand(1..11), rand(1..11)]
  num_cards = 2
  puts "Your two cards are #{cards[0]} and #{cards[1]}."
  puts "Your total is #{total(cards)}."
  until (cards.include? 0) || (total(cards) >= 21)
    hit?(cards, num_cards)
    num_cards += 1
  end

  if total(cards) == 21
    puts "You win!"
  else
    puts "You lose."
  end