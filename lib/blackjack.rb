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
  total_count = 0
  2.times do 
    total_count += deal_card
  end
  display_card_total(total_count)
end

def hit?
  prompt_user
  input = get_user_input
  if input == 'h'
  
  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until sum > 21 
    sum += hit? 
    display_card_tota(sum)
  end 
  end_game
end

it "calls on the #welcome method, 
  then on the #initial_round method, 
  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,
  then calls on the #end_game method"
    
