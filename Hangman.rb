require "colorize"


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



# create an array that contains all the guessed characters
@guesses = []
@goodGuess = []
@badGuess = []

def guessLetter
  print "What if your first guess:"
  # get a check here that only 1 letter is entered
  @theGuess = gets.chomp
  @guesses << @theGuess
  puts "the letters are guessed are #{@guesses}"

  #check if that letter exists in the word
  puts @theArray.include?(@theGuess)
end

# create a class variable that is the
@theArray = []

def startGuess
  # Display to the user the number of positions
  puts "Your job is to find the word that has #{@theWord.length} characters."
  @theArray = @theWord.chars
  #print @theArray
  #puts
  # while the word has not been guessed
  guessLetter


end

def letterCheck


end




# run the code
welcome
getWord
#displayBoard
welcomePlayer2
displayHangman
startGuess


def displayHangman

  puts "|  ---------".colorize(:blue)
  puts "|  |/      |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|  |"
  puts "|-----------"
end
