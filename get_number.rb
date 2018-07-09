# Get My Number Game
# Written by: Terri Riggle

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp.capitalize

puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess what it is?"
target = rand(100) + 1

# Keep track of how many guesses the player has made.
# Before each guess, let them know how many guesses (out of 10) they have left.
num_guesses = 0

# Track whether player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "#{10 - num_guesses} guesses left."
  # Prompt player to make a guess
  print "Enter your guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target
  # Print the appropriate message
  if guess < target
    puts "Oops. Your guess was too low."
  elsif guess > target
    puts "Oops. Your guess was too high."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

# If player ran out of turns, tell them what the number was
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
