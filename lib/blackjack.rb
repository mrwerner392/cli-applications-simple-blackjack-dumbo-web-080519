# print welcome message
def welcome
  puts "Welcome to the Blackjack Table"
end

# deal one card
def deal_card
  rand(1..11)
end

# print card total
def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

# prompt user for input
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

# receive user input
def get_user_input
  gets.chomp
end

# end the game with a message
def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

# deal first two cards and print the total
def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

# deal new card if user asks for one
def hit?(card_total)
  prompt_user
  action = get_user_input
  if action == "h"
    card_total += deal_card
  end
  card_total
end

# print an invalid command message
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# run through one hand
def runner
  welcome
  total = initial_round
  until total >= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
