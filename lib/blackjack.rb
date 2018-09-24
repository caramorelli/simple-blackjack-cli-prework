def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end


def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  prompt_user
  input = gets.chomp
end

def end_game
  # code #end_game here
end

def initial_round
  # code #initial_round here
  first_two = 0
  2.times do 
    first_two += deal_card
  end 
  display_card_total(first_two)
end

def hit?
  # code hit? here
  prompt_user
  sum = []
  sum << get_user_input
  if action == 'h'
    deal_card 
  end 
  return sum.inject(:+)
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round 
  until sum > 21
    sum += hit? 
    display_card_total
  end 
  end_game
end
    
