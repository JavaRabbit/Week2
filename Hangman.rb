require "colorize"

# this method gets the word from Player 1
@theWord = ""
@guesses = []
@goodGuess = []
@badGuess = []
# create a class variable that is the
@theArray = []

def welcome
  puts "Welcome to the Hangman game!"
end




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

  #puts @theArray.length
  #puts @theArray[3]
  @theArray.each do |item|
    print item
  end

  puts ""

 
end





def welcomePlayer2
  puts "Hi there!"
  puts "Your task is to guess a word that is #{@theWord.length} letters long."

end




def guessLetter
  print "What is your guess:"
  # get a check here that only 1 letter is entered
  @theGuess = gets.chomp
  @guesses << @theGuess
  puts "the letters are guessed are #{@guesses}"

  #check if that letter exists in the word
  if  @theArray.include?(@theGuess)
    #put @theGuess into @goodGuess
    @goodGuess << @theGuess
  else
    # put @theGuess into @badGuess
    @badGuess << @theGuess
  end

  displayBoard

end



def startGuess
  # Display to the user the number of positions
  puts "Your job is to find the word that has #{@theWord.length} characters."

  # an array is created from theWord
  @theArray = @theWord.chars
  #print @theArray
  #puts
  # while the word has not been guessed

  guessLetter


end

def letterCheck


end

def displayGoodGuess
  puts @goodGuess
end


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


# run the code
welcome
getWord
displayBoard
welcomePlayer2
displayHangman
startGuess
