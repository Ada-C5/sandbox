class Puppet
  def initialize(name, color, talent, material, tattoos, accesories)
    @name = name
    @color = color
    @talent_level = talent
    @material = material
    @tattoo_count = tattoos
    @accesories = accesories
  end

  def name
    @name
  end

  def tattoo_count
    @tattoo_count
  end

  def tattoo_count=(new_count)
    @tattoo_count = new_count
  end

  def talk(message)
    puts message
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
