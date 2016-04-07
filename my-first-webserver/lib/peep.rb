class Peep
  attr_reader :username, :favorite_animal

  def initialize(options = {})
    @username = options["username"]
    @favorite_animal = options["favorite_animal"]
  end
end
