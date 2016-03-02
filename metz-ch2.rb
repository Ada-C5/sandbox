module Bicycle
  class Gear
    attr_reader :cog
    attr_accessor :in_space
    
    def initialize(chainring, cog, in_space = false)
      @chainring = chainring
      @cog       = cog
      @in_space  = in_space
    end

    def ratio
      chainring / cog.to_f
    end

    def gear_inches(wheel)
      ratio * wheel.diameter
    end

    def chainring
      if in_space
        @chainring * 2
      else
        @chainring
      end
    end
  end

  class Wheel
    attr_reader :rim, :tire
    def initialize(rim, tire)
      @rim  = rim
      @tire = tire
    end

    def diameter
      rim + (tire * 2)
    end

    def circumference
      diameter * Math::PI
    end
  end
end
