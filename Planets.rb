class Planet
  attr_accessor :name, :color, :rate_rotation

  def initialize(hash)
    @name = hash[:name]
    @color = hash[:color]
    @rate_rotation = hash[:rate_rotation]
  end

end


class SolarSystem
  attr_accessor  :formation_date

  def initialize(hash)
    @num_planets = []
    @formation_date = formation_date
  end

  def get_year

  end

  def get_num_of_planets
    puts "Your system has #{@num_planets.size} planets."

  end

end

# Creating instances of planets
Nysa = Planet.new(name: "Nysa", color: "white", rate_rotation: "36.2 days")
Kepler = Planet.new(name: "Kepler", color: "purple", rate_rotation: "462 days")

# Create a SolarSystem
Neptune = SolarSystem.new(formation_date: "3030 BC")

# push planets into the SolarSystem
Neptune.num_planets.push(Nysa)

# Display the number of planets that Neptune has
Neptune.get_num_of_planets

# Add Kepler to Neptune's solar system
Neptune.num_planets.push(Kepler)
puts "Kepler has been added to the solar system"

# Display the rate of roation for Kepler
puts "The rate of rotation for Kepler is #{Kepler.rate_rotation}"


# display the names of all the planets in the Neptune solar system
puts "the name of the planets are:"

Neptune.num_planets.each do |hash|
  Planet = Planet.new(hash)
  puts Planet.name
end

#puts "Which planet do you want to learn more about?"
#planet = gets.chomp
