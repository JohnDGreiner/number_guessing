#checks guess against answer
def check_guess(answer,guess)
  if guess == answer
    puts "You win, you must have cheated."
    exit
  elsif guess > answer
    puts "Too High."
  else
    puts "Too Low."
  end
end

try = 0
guesses = []
# pick a random number
answer = rand(1..100)
(0..4).each do |try|
  # get guess
  puts "Guess my number: "
  puts "This is the answer: #{answer}"
  guesses << gets.chomp.to_i
puts guesses[0]
  check_guess(answer,guesses[try])

end
