#checks guess against answer
def check_guess(answer,guess)
  if guess == answer
    return puts "You win, you must have cheated."
    exit
  elsif guess > answer
    puts "Too High."
  else
    puts "Too Low."
  end
end

# pick a random number
answer = rand(1..100)
# get guess
puts "Guess my number: "
guess = gets.chomp.to_i
check_guess(answer,guess)
