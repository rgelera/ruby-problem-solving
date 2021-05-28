# Ruby Problem Solving - Problem 5
code = Array.new(4) { rand(1..6) }

guesses = 0
correct_pos = 0

until correct_pos == 4
  correct_pos = 0
  correct_digit = 0
  begin 
    print "Enter your guess: "
    guess = gets.chomp
  end until guess =~ /^[1-6]{4}$/
  guess = guess.chars.map(&:to_i)

  code.each_with_index { |d, i|
    if d == guess[i].to_i
      correct_pos += 1
      next
    elsif guess.include? d
      correct_digit += 1
    end
  }
  guesses += 1
  unless correct_pos == 4
    correct_pos.times { print "X" }
    correct_digit.times { print "x" }
    print "\n"
  end
end

puts "#{guess.join}\nNice work! You took #{guesses} #{guesses > 1 ? "guesses." : "guess."}"
  