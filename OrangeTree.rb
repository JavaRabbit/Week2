class OrangeTree
  attr_accessor :height, :alive, :age, :num_fruit

  def initialize(height)
    @height = height
    @alive = true  # the tree will be initialized to alive as true
    @age = 0 # initialize age to 0
    @num_fruit = 0
  end

  def one_year_passes

    if @age >= 12
      @alive = false
      puts "Your #{@age} year old tree is dead"
    else

      @age += 1
      growing_tree
      @num_fruit = 0 #reset the number of fruit to 0
      adding_fruit
    end
  end

    def growing_tree
      if @age < 3
        @height +=2  # if tree is less than 3 years, it grows 2 feet a year
      elsif @age >= 3 && @age < 12
        @height += 1
      end

    end

  def adding_fruit
    if @age > 3
      @num_fruit += 100
    end

  end

  def count_the_oranges
    puts "the number of fruit is #{@num_fruit}"
  end

  def pick_an_orange
    if @num_fruit >= 1
      @num_fruit -= 1
    else
      puts "you have no oranges to pick"
    end
  end

  def pickMoreOranges
    puts "how many oranges do you want to pick?"
    num = gets.chomp.to_i

    if num <= @num_fruit
      @num_fruit = @num_fruit - num
      puts "you now have #{@num_fruit} oranges left."
      puts "Please make some orange marmalade."
    else
      puts "you don't have that many fruit to pick."
    end

  end


  def height
    puts "The tree is #{@height} feet tall"

  end

  def fruit
    puts "It has #{@num_fruit} fruit"
  end


end  # this is the end of the OrangeTree class

class OrangeGrove
  attr_accessor :grove_id, :trees

  def initialize(id)
    @grove_id = id
    @trees = []  # store the trees in the grove in an array

  end

end
