def welcome
  puts "Welcome to the Hangman game!"
end


# this method gets the word from Player 1
@theWord = ""

def getWord
  puts "What word do you want to use?"
  @theWord = gets.chomp.downcase
end


def displayBoard
  #puts @theWord.length

  @theWord.length.times do
    print "-"
  end

  # create a new line
  puts ""

end

def welcomePlayer2
  puts "Hi there!"
  puts "Your task is to guess a word that is #{@theWord.length} letters long."

end

def displayHangman

  puts "|  ---------"
  puts "|  |/      |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|-----------"
end

def guessLetter

end

def startGuess
  # Display to the user the number of positions
  puts "Your job is to find the word that has #{@theWord.length} characters."
  theArray = @theWord.chars
  print theArray
  puts


end






# run the code
welcome
getWord
#displayBoard
welcomePlayer2
displayHangman
startGuess
