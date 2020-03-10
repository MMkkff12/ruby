# Get My Number Game
# Written by: Mark!

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp

puts "Welcome, #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it? "
target = rand(100) + 1

#  num_guesses = 0

#  remaining_guesses= 10 - num_guesses
#  puts puts remaining_guesses + " guesses left."
#  above line will give error as it tries to add a number to a string!!
#  puts remaining_guesses.to_s + " guesses left."
#  Above will work but below is a better way 
#  puts "#{remaining_guesses}  guesses left."

#  Track how many guesses the player has made.
num_guesses = 0

#  Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "You've got #{10 - num_guesses}  guesses left."
  print "Make a guess: "
  guess = gets.to_i

num_guesses += 1

#  Compare the guess to the target.
#  Print the appropriate message.
  if guess < target
    puts "Opps.  Your guess was LOW."
  elsif guess > target
    puts "Opps.  Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses}  guesses!"
    guessed_it = true
  end

end
#  If player ran out of turns, tell them what the number was.
if not guessed_it
  puts "Sorry.  You didn't get my number.  ( It was #{target}.)"
end
