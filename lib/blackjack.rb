def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  prompt_user
  input = gets.chomp
end

def end_game(total)
  if total > 21 
    puts "Sorry, you hit #{total}. Thanks for playing!"
  end 
end

def initial_round
  cards = 2
  while cards > 0 do 
    cards += deal_card
  end
  display_card_total(cards)
end

def hit?
  prompt_user
  # get_user_input
  # if action == 'h'
  #   deal_card 
  # end 
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round 
  until sum > 21
    sum += hit? 
    display_card_total
  end 
  end_game
end
    
