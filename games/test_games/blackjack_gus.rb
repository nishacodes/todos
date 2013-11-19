
def card
        1 + rand(11)
end
        

def blackjack
        puts "This is blackjack."
        card1 = card
        card2 = card
        total_cards = card1 + card2
        puts "Your cards are #{card1} and #{card2}. It gives you the total of #{total_cards}."

        while total_cards < 21
                        puts "Do you want to hit or stay?"
                        answer = gets.chomp
                                if answer == "hit"
                                                new_card = card 
                                                  total_cards += new_card
                                                  puts " Your new card is #{new_card} and now you have in your hand a total of #{total_cards}"
                                        else
                                        break
                                end
        end

        if         total_cards > 21
                        puts "You have more than 21 so you lose"
                elsif total_cards == 21
                        puts "You win"
                else
                        puts "You don't have 21 so you lose"
        end

end

blackjack
card