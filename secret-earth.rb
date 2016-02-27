class Planet
  attr_accessor :name, :diameter, :populated, :awesome,
                :seafood_buffet_on_friday, :facebook
                
  def initialize(planet_hash)
    @name      = planet_hash[:name]
    @diameter  = planet_hash[:diameter] / 25.0
    @populated = planet_hash[:population] > 0
    @awesome   = planet_hash[:facebook] == false
    @seafood_buffet_on_friday = (planet_hash[:liquid_water] == true) && @populated
  end
end

planet_hash = {
  name: "Secret Earth",
  diameter: 15_000_000,
  population: 32159,
  liquid_water: true,
  facebook: true
}

planet = Planet.new(planet_hash)

puts planet.name == "Earth"
puts planet.facebook == true
puts planet.awesome == true
puts planet.seafood_buffet_on_friday == true
puts planet.diameter >= 12_500_000
