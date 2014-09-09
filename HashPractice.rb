pet = [
  {type: "Dog", breed: "husky", name: "Alex", color: "white and grey"},
  {type: "Cat", breed: "tabby", name: "Maggie", color: "orange"}

]


class Pets
  attr_accessor :type, :breed, :color, :name
  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @color = hash[:color]
    @breed = hash[:breed]
  end
end

max = Pets.new(name: "Max", breed:"mutt", type:"dog", color: "brown")

puts max.color

pet.each do |hash|
  mypet = Pets.new(hash)
  #puts mypet
  puts mypet.breed
  puts mypet.name
end
