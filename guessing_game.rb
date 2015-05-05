#checks guess against answer
def check_guess(answer,guess)
  if guess == answer
    puts "You win, you must have cheated.\n\n"
    exit
  elsif guess > answer
    puts "Guess a greater number.\n\n"

  else
    puts "Guess a lower number.\n\n"
  end
end

# check if used guess before
def dup_check(guesses)
  counter = guesses.count-1
  counter.times do |counter|
    if guesses.last == guesses[counter]
      puts "You guessed #{guesses.last}. I think if you try it one more time it will work.\n\n"
      break
    end
  end
end

# check inteligence of user
def guess_accuracy(guesses, answer)
  numbers = ["first", "second", "third", "fourth"]
  counter = guesses.count-1
  counter.times do |counter|
    if guesses.last < guesses[counter] && answer > guesses[counter]
      puts "Is #{guesses.last} greater than the #{guesses[counter]} you tried on your #{numbers[counter]} guess?\n\n"
      break
    elsif guesses.last > guesses[counter] && answer < guesses[counter]
      puts "Is #{guesses.last} less than the #{guesses[counter]} you tried on your #{numbers[counter]} guess?\n\n"
      break

    end
  end
end

try = 0
guesses = []
# pick a random number
answer = rand(1..100)
#answer = now.seconds.

(0..4).each do |try|
  # get guess
  puts "Guess my number: "
  # puts "This is the answer: #{answer}"
  guesses << gets.chomp.to_i
  if guesses.count != 1
    dup_check(guesses)
    guess_accuracy(guesses, answer)
  end
  check_guess(answer,guesses[try])
end

puts "Can't believe you didn't guess #{answer}. You LOSE.\n\n"
