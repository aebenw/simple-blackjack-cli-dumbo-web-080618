def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  return num
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  x = gets.chomp
  return x
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  number = deal_card + deal_card
  display_card_total(number)
  number
end

def hit?(number)
  prompt_user
  x = get_user_input
  if x == "s"
    return  number
  elsif x =="h"
    new = deal_card + number
    return new
  else p invalid_command
  end
end

def invalid_command
  puts "Please enter valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21
      x = hit?(x)
      display_card_total(x)
  end
  end_game(x)
 

end
    
