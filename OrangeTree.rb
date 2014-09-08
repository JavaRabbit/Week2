class OrangeTree
  attr_accessor :height, :alive, :age

  def initialize(height)
    @height = height
    @alive = true  # the tree will be initialized to alive as true
    @age = 0 # initialize age to 0
  end

  def one_year_passes
    @age += 1
  end


  def height
    puts @height

  end


end

lime = OrangeTree.new(5)
