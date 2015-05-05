#checks guess against answer
def check_guess(answer,guess)
  if guess == answer
    puts "You win, you must have cheated.\n\n"
    exit
  elsif guess > answer
    puts "Too High.\n\n"

  else
    puts "Too Low.\n\n"
  end
end

#check if used guess before
def dup_check(guesses)
  if guesses.count != 1
    counter = guesses.count-1
    counter.times do |counter|
      if guesses.last == guesses[counter]
        puts "You entered #{guesses.last} twice. This game is too difficult for you. Goodbye.\n\n"
        exit
      end
    end
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
  dup_check(guesses)
  check_guess(answer,guesses[try])
end

puts "Can't believe you didn't guess #{answer}. You LOSE.\n\n"
