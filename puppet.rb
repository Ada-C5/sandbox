class Puppet
  attr_accessor :name
  attr_reader :tattoo_count

  def initialize(options)
    @name = options[:name]
    @color = options[:color]
    @talent_level = options[:talent]
    @material = options[:material]
    @tattoo_count = options[:tattoos]
    @accesories = options[:accesories]

    if options[:color] == nil
      @color = "blue"
    end

    if options[:accesories] == nil
      @accesories = []
    end
  end

  def talk(message)
    puts message
  end 

  def songs_i_know

  end

  def play 
    unless @accesories.include?("ukelele")
      return "#{ @name } doesn't even have a ukelele. :("
    end

    case @talent_level
    when 0
      return "#{ @name } isn't sure what to do with a ukelele. :/"
    when 1
      return "#{ @name } plays the ukelele poorly"
    when 2
      return "#{ @name } plays the ukelele ok"
    when 3
      return "#{ @name } plays the ukelele well"
    when 4
      return "#{ @name } plays the ukelele really well!"
    when 5
      return "#{ @name } is jamming on that ukelele!!!!"
    end
  end 
end 

class Ukelele
  attr_accessor :songs
  def initialize
    @songs = []
  end
end

jims_ukelele = Ukelele.new
jeremys_ukelele = Ukelele.new

jims_ukelele.songs = ["stairway_to_heaven", "somewhere_over_the_rainbow"]
jeremys_ukelele.songs = ["tiny_bubbles"]

puppet_options = { name: "Jeremy", talent: 0, accesories: [jeremys_ukelele, "fancy shirt"] }
jeremy = Puppet.new(puppet_options)
blue_puppet = Puppet.new(name: "Jeremy", talent: 0)



