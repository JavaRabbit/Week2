require "colorize"

class Hangman

  def initialize
   # this method gets the word from Player 1
   @theWord = ""
   @guesses = []
   @goodGuess = []
   @badGuess = []
   # create a class variable that is the
   @theArray = []
   @theGuess = ""
  end  # end of initialize




  def getWord
   puts "Player_1, What word do you want to use?"
   @theWord = gets.chomp.downcase

   # an array is created from theWord
   @theArray = @theWord.chars

  end # end of getWord


  def displayBoard
   @theWord.length.times do
    print "-"
   end

   # create a new line
   puts ""

   #puts @theArray.length
   #puts @theArray[3]
   @theArray.each do |item|
    #print item
    if @goodGuess.include?(item)
      print item
    else
      print "-"
    end

  end

   #puts ""
  end # end displayBoard



def welcomePlayer2
  puts "Hi there!"
  puts "Your task is to guess a word that is #{@theWord.length} letters long."

end




def guessLetter
  print "What is your guess:"
  # get a check here that only 1 letter is entered
  @theGuess = gets.chomp

  # check if theGuess is already in @guesses
  if @guesses.include?(@theGuess)
    puts "You already tried that guess. Try another letter"
    #h.guessLetter # or repeat def guessLetter
  else
    @guesses << @theGuess # this puts theGuess into the guesses array
  end

  if  @theArray.include?(@theGuess)
    #put @theGuess into @goodGuess
    @goodGuess << @theGuess
  else
    # put @theGuess into @badGuess
    @badGuess << @theGuess
  end

  displayBoard
  puts @guesses

end # end guessLetter



def startGuess

  # while the word has not been guessed

  guessLetter


end  # end of startGuess


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
end  # end displayHangman

end # end of class Hangman

def run
  puts "Welcome to the Hangman game. You will need 2 players."

 h = Hangman.new # this creates a new instance of the game
 h.getWord
 h.welcomePlayer2

 h.startGuess

 #h.displayHangman

end  # end of run

# this will start the program when run is called
run
