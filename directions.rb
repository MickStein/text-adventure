#User should start facing forward and can type left, right or forward
#They can move right, if they do they die as there is a goblin
#They can move left, if they do they die as there is a werewolf
#They can move forward, if they do they can go again
#If they do not enter any of the above they get the initial message
#If the user goes forward again they win and the game exits

initial_message = "You are in a dark forest, do you go left, right or forward? \n Type 'right', 'left' or 'forward'"

level_2_message = "You come to another crossroad... which way now? \n Type 'right', 'left' or 'forward'"

puts initial_message

alive = true

still_alive = true

won_game = false

if alive == false
  puts "GAME OVER"
end

if won_game == true
  puts "CONGRATULATIONS! You made it out of the dark forest alive! \n Goodbye!"
end

while alive do
  user_input = gets.chomp.downcase

  if user_input == "left"
    puts "Oh no a werewolf ate you! \n You died..."
    still_alive = false
    break
  elsif user_input == "right"
    puts "Yikes a goblin hit you over the head with a rock! \n You died..."
    still_alive = false
    break
  elsif user_input == "forward"
    puts "You continue walking deeper into the forest..."
    
    if still_alive
      puts level_2_message
      user_input = gets.chomp.downcase
    
      if user_input == "left"
        puts "Oh no a werewolf! \n You run back to the last crossroads..."
      elsif user_input == "right"
        puts "Yikes a goblin run back! \n You run back to the last crossroads..."
      elsif user_input == "forward"
        puts "CONGRATULATIONS! You made it out! \n GAME OVER"
        break
      else
        puts level_2_message
      end
    end
  else
    puts initial_message
  end

end



